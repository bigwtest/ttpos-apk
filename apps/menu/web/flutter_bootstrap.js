{{flutter_js}}
{{flutter_build_config}}

var loadingContainer = document.getElementById("loading-container");
_flutter.loader.load({
  onEntrypointLoaded: async function (engineInitializer) {
    const appRunner = await engineInitializer.initializeEngine();

    if (loadingContainer) {
      loadingContainer.classList.add("hidden");
      // 完全移除加载页面
      setTimeout(function () {
        loadingContainer.remove();
      }, 500);
    }
    await appRunner.runApp();
  },
});
