import fs from "fs";
import { ofetch } from "ofetch";
import { stringify } from "qs";

const API_BASE_URL = "https://webmenu-compop-shop.sandypos.com/api/v1";
const API_TOKEN =
  "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1aWQiOjE5NTUxNzgsImlhdCI6MTc0NzQ5MjE4NiwiZXhwIjoxNzQ4Nzg4MTg2LCJhZG0iOjF9._xVlPEMLfP3vhE8sgBf4bZyV_vpUtv2CoChr-NXIWHY";

const API_ITEMS = "/member2/hq/menu-items";

interface MenuItem {
  id: number;
  item_id: number;
  item_name1: string;
  item_name2: string;
  unit_1: string;
  unit_2: string;
  unit_3: string;
  unit_4: string;
  unit_5: string;
  slu_id: number;
  slu_name: string;
  price_1: number;
  price_2: number;
  price_3: number;
  price_4: number;
  price_5: number;
}

interface MenuItemResponse {
  code: number;
  count: number;
  results: MenuItem[];
}

const getList = async () => {
  const response = await ofetch(
    `${API_BASE_URL}${API_ITEMS}?${stringify({
      res_id: 54095,
      keyword: "",
      group_id: "",
      item_type: "",
      is_service: "",
      is_weight: "",
      is_discount: "",
      commission_type: "",
      page: 1,
      page_size: 300,
      guid: "",
      backend: "pos",
      language: "zh-CN",
    })}`,
    {
      method: "GET",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${API_TOKEN}`,
      },
    }
  );
  const data = (response as MenuItemResponse)?.results?.map((item) => ({
    id: item.id,
    item_id: item.item_id,
    item_name1: item.item_name1,
    item_name2: item.item_name2,
    unit_1: item.unit_1,
    unit_2: item.unit_2,
    unit_3: item.unit_3,
    unit_4: item.unit_4,
    unit_5: item.unit_5,
    slu_id: item.slu_id,
    slu_name: item.slu_name,
    price_1: item.price_1,
    price_2: item.price_2,
    price_3: item.price_3,
    price_4: item.price_4,
    price_5: item.price_5,
  }));

  // 写入到一个 json 文件
  fs.writeFileSync("gomenu.json", JSON.stringify(data, null, 2));
};

const getItem = async (id: number) => {
  // 先判断 gomenu.json 文件中是否存在该 id
  const data = fs.readFileSync("gomenu.json", "utf-8");
  const menuItems = JSON.parse(data);
  const item = menuItems.find((item: MenuItem) => item.id === id);
  if (!item) {
    return;
  }
  console.log("当前处理", item.item_name1);

  // 判断 item.img_url 是否为空
  if (item.img_url) {
    console.log(`已存在图片地址 ${item.item_name1}`, item.img_url);
    return;
  }

  const response = await ofetch(
    `${API_BASE_URL}${API_ITEMS}/${id}/detail?${stringify({
      res_id: 54095,
      guid: "",
      backend: "pos",
      language: "zh-CN",
    })}`,
    {
      method: "GET",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${API_TOKEN}`,
      },
    }
  );

  const img_url = (response as any)?.takeout?.img_url;
  if (!img_url) {
    console.log(`没有图片地址 ${item.item_name1}`);
    return;
  }

  // 写入图片地址
  item.img_url = img_url;
  menuItems.splice(menuItems.indexOf(item), 1, item);
  fs.writeFileSync("gomenu.json", JSON.stringify(menuItems, null, 2));
};

const downloadImg = async () => {
  // 创建资源文件夹
  fs.mkdirSync("gomenu_img", { recursive: true });

  const data = fs.readFileSync("gomenu.json", "utf-8");
  const menuItems = JSON.parse(data);
  for (const item of menuItems) {
    const img_url = item.img_url;
    if (!img_url) {
      continue;
    }

    // 替换 / 为 -
    const img_name = item.item_name1.replace(/\//g, "-");
    const img_path = `gomenu_img/${img_name}.png`;

    // 判断是否存在文件，存在了就跳过下载了
    if (fs.existsSync(img_path)) {
      console.log(`文件已存在 ${img_path}`);
      continue;
    }

    // 开始下载
    console.log(`开始下载 ${img_path}`);

    try {
      // 使用 ofetch 下载
      const img_data = await ofetch(`https:${img_url}`, {
        method: "GET",
        responseType: "arrayBuffer",
      });

      fs.writeFileSync(img_path, Buffer.from(img_data));
    } catch (err) {
      console.log(`下载失败 ${img_path}`);
      continue;
    } finally {
      await new Promise((resolve) => setTimeout(resolve, 100));
    }
  }
};

const countImg = async () => {
  const data = fs.readFileSync("gomenu.json", "utf-8");
  const menuItems = JSON.parse(data);
  console.log(`商品数量: ${menuItems.length}`);
  const img_count = menuItems.filter((item: any) => item.img_url).length;
  console.log(`包含图片地址数量: ${img_count}`);
  const img_jpg_count = menuItems.filter((item: any) =>
    item?.img_url?.endsWith(".jpg")
  ).length;
  console.log(`包含JPG图片地址数量: ${img_jpg_count}`);
  const img_png_count = menuItems.filter((item: any) =>
    item?.img_url?.endsWith(".png")
  ).length;
  console.log(`包含PNG图片地址数量: ${img_png_count}`);
};

const main = async () => {
  // await getList();
  // // 读取 gomenu.json 文件
  // const data = fs.readFileSync("gomenu.json", "utf-8");
  // const menuItems = JSON.parse(data);
  // // 遍历 menuItems 数组
  // for (const item of menuItems) {
  //   await getItem(item.id);
  //   await new Promise((resolve) => setTimeout(resolve, 200));
  // }

  // downloadImg();

  countImg();
};

main();
