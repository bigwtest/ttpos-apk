package goserver

import (
	"fmt"

	"github.com/gin-gonic/gin"
	"github.com/jinzhu/gorm"
	_ "github.com/jinzhu/gorm/dialects/sqlite"
)

var db *gorm.DB
var err error

type Project struct {
	ID   uint   `json:"id"`
	Name string `json:"name"`
}

func StartServer(dbPath string) {
	db, err = gorm.Open("sqlite3", dbPath)
	if err != nil {
		fmt.Println(err)
	}
	defer db.Close()
	db.AutoMigrate(&Project{})

	r := gin.Default()

	r.GET("/", getProjects)
	r.GET("/project/:id", getProject)
	r.POST("/project", createProject)
	r.PUT("/project/:id", updateProject)
	r.DELETE("/project/:id", deleteProject)
	r.GET("/sqlite", func(c *gin.Context) {
		db.Create(&Project{Name: "test1"})
		var project1 Project
		db.First(&project1)
		db.Model(&project1).Update("Name", "test2")
		var project2 Project
		db.First(&project2)
		db.Delete(&project2)

		c.JSON(200, gin.H{"message": "ok"})
	})

	r.Run(":8080")
}

func getProjects(c *gin.Context) {
	var projects []Project
	if err := db.Find(&projects).Error; err != nil {
		c.AbortWithStatus(404)
		fmt.Println(err)
	} else {
		c.JSON(200, projects)
	}
}

func getProject(c *gin.Context) {
	id := c.Params.ByName("id")
	var project Project
	if err := db.Where("id = ?", id).First(&project).Error; err != nil {
		c.AbortWithStatus(404)
		fmt.Println(err)
	} else {
		c.JSON(200, project)
	}
}

func createProject(c *gin.Context) {
	var project Project
	c.BindJSON(&project)
	db.Create(&project)
	c.JSON(200, project)
}

func updateProject(c *gin.Context) {
	id := c.Params.ByName("id")
	var project Project
	db.Where("id = ?", id).First(&project)
	c.BindJSON(&project)
	db.Save(&project)
	c.JSON(200, project)
}

func deleteProject(c *gin.Context) {
	id := c.Params.ByName("id")
	var project Project
	db.Where("id = ?", id).Delete(&project)
	c.JSON(200, gin.H{"id #" + id: "deleted"})
}
