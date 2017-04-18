package com.dbmp.web.utils.echarts;

import java.util.ArrayList;
import java.util.List;

import com.github.abel533.echarts.Toolbox;
import com.github.abel533.echarts.axis.CategoryAxis;
import com.github.abel533.echarts.code.SeriesType;
import com.github.abel533.echarts.feature.Feature;
import com.github.abel533.echarts.series.Line;

/**
 * 模块化 Echarts java
 * <p>Title: EchartsUtil</p>
 * <p>Description: </p>
 * <p>Company: Asiainfo Co.</p>
 * <p>Package: com.dbmp.web.utils.echarts</p>
 * @author <a href="mailto:yeshuai@asiainfo.com">叶帅</a>  
 * <p>DateTime: 2016-4-7 ★  下午5:08:49</p> 
 * @Version V1.0.0
 */
public class EchartsUtil {
	
	/**
	 * 获取Echarts 工具箱
	 * @Title: getToolbox
	 * @Description: 
	 * @param @return    
	 * @return Toolbox
	 * @throws
	 */
	public static Toolbox getToolbox(){
		List<String> charType = new ArrayList<String>();
		charType.add("line");
		charType.add("bar");
		Toolbox toolbox = new Toolbox();
		toolbox.show(true); //显示策略，可选为：true（显示） | false（隐藏） 
		//toolbox.feature(Feature.mark.show(true));//辅助线标志
		toolbox.feature(Feature.dataView.show(true).readOnly(false));//数据视图
		toolbox.feature(Feature.magicType.show(true).type(charType));//动态类型切换，默认可以折线图、柱状图切换
		toolbox.feature(Feature.restore.show(true));//还原，复位原始图表保存图片（IE8-不支持）
		toolbox.feature(Feature.saveAsImage.show(true));//保存图片（IE8-不支持）
		return toolbox;
	}
	
	/**
	 * 获取类目轴
	 * @Title: getCategoryAxis
	 * @Description: 
	 * @param @param list
	 * @param @return    
	 * @return CategoryAxis
	 * @throws
	 */
	public static CategoryAxis getCategoryAxis(List<String> list){
		CategoryAxis categoryAxis = new CategoryAxis();
		categoryAxis.boundaryGap(false);
		categoryAxis.splitLine().show(false);//去掉网格线
		for (String str : list) {
			categoryAxis.data(str);
		}
		return categoryAxis;
	}
	
	/**
	 * 获取折线图数据
	 * @Title: getLine
	 * @Description: 
	 * @param @param list
	 * @param @return    
	 * @return Line
	 * @throws
	 */
	public static Line getLine(List<Integer> list){
		Line line = new Line();
		line.name("最近波动");
		line.type(SeriesType.line);
		for (Integer integer : list) {
			line.data(integer);
		}
		return line;
	}
	public static Line getLineDouble(List<Double> list){
		Line line = new Line();
		line.name("最近波动");
		line.type(SeriesType.line);
		for (Double dble : list) {
			line.data(dble);
		}
		return line;
	}
	/**
	 * 获取折线图数据
	 * @Title: getLine
	 * @Description: 
	 * @param @param list
	 * @param @param name
	 * @param @return    
	 * @return Line
	 * @throws
	 */
	public static Line getLine(List<Integer> list,String name){
		Line line = new Line();
		line.name(name);
		line.type(SeriesType.line);
		for (Integer integer : list) {
			line.data(integer);
		}
		return line;
	}
	
}
