-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

--[[
	這個範例解說如何在畫面上呈現一張圖片，以及相關的控制參數
	Author: Zack Lin
	Time: 2015/3/12
]]

SCREEN = {
	WIDTH = display.viewableContentWidth,
	HEIGHT = display.viewableContentHeight
}
print( 'SCREEN WIDTH:' , SCREEN.WIDTH )
SCREEN.CENTER = {
	X = display.contentCenterX,
	Y = display.contentCenterY
}

--display.setStatusBar( display.DefaultStatusBar )
display.setStatusBar( display.TranslucentStatusBar )

local init

init = function (  )
	--顯示一張圖片，參數分別為路徑,寬度,高度
	local image1 = display.newImageRect(  "images/magic.jpg", 300, 200 )
	--設定圖片的錨點
	image1.anchorX , image1.anchorY = 0 , 0

	--設定圖片的座標
	image1.x = SCREEN.CENTER.X
	image1.y = SCREEN.CENTER.Y

	--設定圖片的透明度
	image1.alpha = 0.5

	--設定圖片的縮放比例
	image1.xScale = 0.5
	image1.yScale = 2

	--設定圖片的旋轉度
	--image1.rotation = 45

	image1.isVisible = false
end

init()


