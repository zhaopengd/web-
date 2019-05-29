 flex容器
新版:
     	   display: flex;
       	   display: -webkit-flex   
           老版: 
     	    display: box;
     	    display: -webkit-box;9.1.1 flex容器
新版:
     	   display: flex;
       	   display: -webkit-flex;
   		老版: 
     	    display: box;
     	    display: -webkit-box;   
9.1.2 主轴的布局方向
		新版:
	  		flex-direction: row;  --- 主轴默认值
	   		flex-direction: column; --- 主轴与侧轴发生对调
		老版:
    	    -webkit-box-orient: horizontal;  --- 主轴默认值
    	    -webkit-box-orient: vertical;  --- 主轴与侧轴发生对调
9.1.3 主轴的排列方向
		新版:
     	   flex-direction: row-reverse; --- 主轴从左到右，start与end对调
	  	   flex-direction: column-reverse; --- 主轴与侧轴发生对调，主轴start与end对调
		老版:
    	   -webkit-box-direction: normal; --- 元素排从左到右，默认方向
           -webkit-box-direction: reverse; --- 元素排从右到左，但是元素整体都在左边

9.1.4 富裕空间的管理（主轴）
		新版:
     	   justify-content: flex-start; --- 富裕空间在右侧
    	   justify-content: flex-end; --- 富裕空间在左侧
     	   justify-content: center; --- 富裕空间在两边
    	   justify-content: space-around; --- 富裕空间在左侧包含每一个伸缩项目
    	   justify-content: space-between; --- 每一个伸缩项目包含富裕空间

老版:
    	  -webkit-box-pack: start; --- 默认值：富裕空间在右边
    	  -webkit-box-pack:end; --- 富裕空间在左边
    	  -webkit-box-pack:center; --- 富裕空间包含伸缩项目的整体，使伸缩项目整体在中间，富裕空间在两边
   	 	  -webkit-box-pack:justify; --- 伸缩项目包含富裕空间

9.1.5 富裕空间的管理（侧轴）
		新版:伸缩项目的高度又自身内容撑开
	   		align-items: flex-start; --- 富裕空间在下边
	  		align-items: flex-end; --- 富裕空间在上边
	   		align-items: center; --- 富裕空间在两边
	   		align-items: baseline; --- 富裕空间被基线分开
	   		align-items: stretch; --- 拉伸，默认值

		老版:
     	    -webkit-box-align: start; --- 富裕空间在下边
      	    -webkit-box-align: end; --- 富裕空间在上边
    	    -webkit-box-align: center; --- 富裕空间在上下两边，富裕空间包含伸缩项目的整体，使伸缩项目整体在中间



9.1.6 弹性空间（伸缩项目）
		新版:
	    	 flex-grow: 1; --- 将富裕空间分配到项目上
		老版:
	 		 -webkit-box-flex: 1; --- 弹性空间，将富裕空间分配到项目上
9.2新版本特有属性
9.2.1 项目实现换行（flex容器）
		flex-wrap: nowrap; --- 默认值，父元素宽度不够，子元素自身宽度会被压缩
		flex-wrap: wrap; --- 父元素宽度不够，子元素会进行换行
		flex-wrap: wrap-reverse; --- 子元素换行的同时，侧轴的start与end发生对调

		出现flex-wrap：wrap；之后，出现单行的富裕空间
    	注意：align-items 每一行的富裕空间，align-items: flex-start;
9.2.2 控制整体侧轴的富裕空间（flex容器）
		align-content: flex-start; --- 项目整体进行打包，放在整体侧轴的start处
		align-content: flex-end; --- 项目整体进行打包，放在整体侧轴的end处
		align-content: center; --- 项目整体进行打包，放在整体侧轴的center处

		注意：align-items 与 align-content 发生冲突时，看元素是否换行
   	          如果没有换行align-items 生效
        	  如果有换行align-content 生效 --- 打包

		align-content 生效条件：
  	   	1)在伸缩容器中产生换行flex-wrap: wrap;
 		2)同时设置足够高的容器高度（因为需要整体打包才能看见效果，所以需要高度）

9.2.3 控制主轴和侧轴的位置及方向（flex容器）
		flex-flow 是 flex-wrap 与 flex-direction 的缩写
		flex-flow:wrap-reverse  column-reverse;
     		 与flex-wrap: wrap-reverse;flex-direction: column-reverse;实现效果一样
9.2.4 项目的排列顺序（flex项目）
		order: 1;
      	order排序，把排序元素先单独拿出来，让剩余元素先正常排列，排完之后，order元素在其后边再进行顺序排列
    	order是沿着主轴方向进行排序的

9.2.5 项目自身侧轴的富裕空间（flex项目）
		每一个项目控制自身的侧轴
		align-self: flex-start;
		align-self: flex-end;
		align-self: center;
9.2.6 收缩率（flex项目）
		当伸缩项目设置宽度，比容器宽度还要大时，元素并没有发生溢出的情况，那此时就出现一个东西叫 收缩因子（收缩率）
		flex-shrink:拉伸因子 0   ---不拉伸
		flex-shrink:收缩因子  默认值：1 --- 收缩
9.2.7 基准值（flex项目）
子元素的基准值
flex-basis：0  
