<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
class ArticleList{
	String theme_title = "国务院：激发社会领域投资活力 引导企业有效利用多层次资本市场";
	String theme_host = "郎咸平";
	String theme_summary = "扎实有效放宽行业准入<br/>进一步扩大投融资渠道<br/>认真落实土地税费政策<br/>大力促进融合创新发展<br/>加强监管优化服务";
	String backgroundImage="picture/adver.jpg";
	Article[] list;
	ArticleList(){
		Article[] articleList={
				new Article("A001", "topNews", "picture/sub-news1.jpg", "大摩：雄安新区未来10-20年投资总量料达1.2-2.4万亿元", "国际投行摩根士丹利最新报告预计，中国新设立的雄安新区，承接北京的“非首都”功能，将吸引大量投资和人口，预计未来10-20年雄安新区吸纳的……", "2017.03.19"), 
				new Article("A002", "topNews", "picture/sub-news2.png", "创业板定增限售新规落地 3家公司公告调整限售期", "近日3家公司公告调整限售期。此前业内纷传的创业板定增规则即将修改，修改后的规则将与主板、中小板保持一致。创业板的再融资项目， 即使溢……", "2017.03.19"), 
				new Article("A003", "topNews", "picture/sub-news3.png", "“清仓式”减持频现 重要股东日均减持超10亿元", "截至2017年2月22日，A股重要股东累计减持规模达到367.86亿元。以公告披露的单一股东单日减持为单位统计，重要股东减持次数达到895次。", "2017.03.19"), 
				new Article("A004", "topNews", "picture/sub-news4.jpg", "周冠军杨帅短线操盘相当出彩！常胜将军王召俊冲回前三", "周冠军杨帅今日收盘感叹道：险守擂台！与第二名差距不大的他感受到了很大的竞争压力。和小妹表示，周末将苦心专研，下周要好好搞一搞！", "2017.03.19"), 
				new Article("A005", "topNews", "picture/sub-news5.jpg", "接受恒大下属企业委托 深铁持有万科表决权超越“宝能系”", "万科3月16日晚公告称，恒大与深圳地铁集团签署战略合作框架协议，恒大下属企业将持有的约15.53亿股万科A股份表决权、提案权及参加股东大……", "2017.03.19"), 
				new Article("A006", "news", "picture/sub-news6.gif", "恒大放手后：万科董事会席位之争才刚刚开", "截至2017年2月22日，A股重要股东累计减持规模达到367.86亿元。以公告披露的单一股东单日减持为单位统计，重要股东减持次数达到895次。", "2017.03.19"), 
				new Article("A007", "news", "picture/sub-news1.jpg", "2月中国实际使用外资585.9亿元 同比增长9.2%", "2月全国新设立外商投资企业1850家，同比增长33.3%；实际使用外资金额585.9亿元人民币，同比增长9.2%。从产业分布看，服务业实际使用外资……", "2017.03.19"),
				new Article("A001", "news", "picture/sub-news1.jpg", "大摩：雄安新区未来10-20年投资总量料达1.2-2.4万亿元", "国际投行摩根士丹利最新报告预计，中国新设立的雄安新区，承接北京的“非首都”功能，将吸引大量投资和人口，预计未来10-20年雄安新区吸纳的……", "2017.03.19"), 
				new Article("A002", "news", "picture/sub-news2.png", "创业板定增限售新规落地 3家公司公告调整限售期", "近日3家公司公告调整限售期。此前业内纷传的创业板定增规则即将修改，修改后的规则将与主板、中小板保持一致。创业板的再融资项目， 即使溢……", "2017.03.19"), 
				new Article("A003", "news", "picture/sub-news3.png", "“清仓式”减持频现 重要股东日均减持超10亿元", "截至2017年2月22日，A股重要股东累计减持规模达到367.86亿元。以公告披露的单一股东单日减持为单位统计，重要股东减持次数达到895次。", "2017.03.19"), 
				new Article("A004", "commentary", "picture/sub-news4.jpg", "周冠军杨帅短线操盘相当出彩！常胜将军王召俊冲回前三", "周冠军杨帅今日收盘感叹道：险守擂台！与第二名差距不大的他感受到了很大的竞争压力。和小妹表示，周末将苦心专研，下周要好好搞一搞！", "2017.03.19"), 
				new Article("A005", "commentary", "picture/sub-news5.jpg", "接受恒大下属企业委托 深铁持有万科表决权超越“宝能系”", "万科3月16日晚公告称，恒大与深圳地铁集团签署战略合作框架协议，恒大下属企业将持有的约15.53亿股万科A股份表决权、提案权及参加股东大……", "2017.03.19"), 
				new Article("A006", "commentary", "picture/sub-news6.gif", "恒大放手后：万科董事会席位之争才刚刚开", "截至2017年2月22日，A股重要股东累计减持规模达到367.86亿元。以公告披露的单一股东单日减持为单位统计，重要股东减持次数达到895次。", "2017.03.19"), 
				new Article("A007", "commentary", "picture/sub-news1.jpg", "2月中国实际使用外资585.9亿元 同比增长9.2%", "2月全国新设立外商投资企业1850家，同比增长33.3%；实际使用外资金额585.9亿元人民币，同比增长9.2%。从产业分布看，服务业实际使用外资……", "2017.03.19")
		};
		list=articleList;
	}
	class Article{
		String articleId;
		String articleType;
		String articlePic;
		String articleTitle;
		String articleSummary;
		String articleTime;
		Article(String articleId, String articleType, String articlePic, String articleTitle, String articleSummary, String articleTime) {
		    this.articleId = articleId;
		    this.articleType = articleType;
		    this.articlePic = articlePic;
		    this.articleTitle = articleTitle;
		    this.articleSummary = articleSummary;
		    this.articleTime = articleTime;
		}
	}
}
ArticleList articleList = new ArticleList();
String adbackground="picture/adver1.jpeg";
%>
<html>
    <head>
        <meta charset="utf-8">
        <title>Stock.com</title>
        <link rel="stylesheet" type="text/css" href="css/main_header.css"/>
        <link rel="stylesheet" type="text/css" href="css/main_content_right.css"/>
        <link rel="stylesheet" type="text/css" href="css/main_content_left.css"/>
        <link rel="stylesheet" type="text/css" href="css/main_footer.css"/>
    </head>
    
    <body>
        <div class="header">
        <div class="main-logo">Stock</div>    
        <nav>
            <ul class="horizontal-list nav-list">
                <li class="nav-item active" id="nav-item-1">
                    <a href="" class="nav-link-sec">行情</a>
                    <div class="subnav" id="subnav-1">
                        <div class="subnav-inset">
                            <ul class="subnav-list">
                                <li class="active"><a href="" class="nav-link-subsec">行情</a></li>
                                <li><a href="" class="nav-link-subsec">指标股</a></li>
                                <li><a href="" class="nav-link-subsec">金融</a></li>
                                <li><a href="" class="nav-link-subsec">地产</a></li>
                                <li><a href="" class="nav-link-subsec">航空</a></li>
                                <li><a href="" class="nav-link-subsec">钢铁</a></li>
                                <li><a href="" class="nav-link-subsec">煤炭</a></li>
                                <li><a href="" class="nav-link-subsec">重工机械</a></li>
                                <li><a href="" class="nav-link-subsec">电力资源</a></li>
                                <li><a href="" class="nav-link-subsec">汽车</a></li>
                                <li><a href="" class="nav-link-subsec">有色金属</a></li>
                                <li><a href="" class="nav-link-subsec">石油化工</a></li>
                                <li><a href="" class="nav-link-subsec">农林牧渔</a></li>
                                <li><a href="" class="nav-link-subsec">环保</a></li>
                                <li><a href="" class="nav-link-subsec">航天军工</a></li>
                                <li><a href="" class="nav-link-subsec">港口运输</a></li>
                            </ul>
                            <ul class="subnav-list">
                                <li><a href="" class="nav-link-subsec">新能源</a></li>
                                <li><a href="" class="nav-link-subsec">中小板</a></li>
                                <li><a href="" class="nav-link-subsec">电力设备</a></li>
                                <li><a href="" class="nav-link-subsec">科技类</a></li>
                                <li><a href="" class="nav-link-subsec">高速类</a></li>
                                <li><a href="" class="nav-link-subsec">机场类</a></li>
                                <li><a href="" class="nav-link-subsec">建筑用品</a></li>
                                <li><a href="" class="nav-link-subsec">水务</a></li>
                                <li><a href="" class="nav-link-subsec">仓储物流运输</a></li>
                                <li><a href="" class="nav-link-subsec">水泥</a></li>
                                <li><a href="" class="nav-link-subsec">电子类</a></li>
                                <li><a href="" class="nav-link-subsec">软件</a></li>
                                <li><a href="" class="nav-link-subsec">超市</a></li>
                                <li><a href="" class="nav-link-subsec">零售</a></li> 
                                <li><a href="" class="nav-link-subsec">材料</a></li>
                                <li><a href="" class="nav-link-subsec">酒店旅游</a></li>
                            </ul>
                            <ul class="subnav-list"> 
                                <li><a href="" class="nav-link-subsec">酒类</a></li>
                                <li><a href="" class="nav-link-subsec">造纸</a></li>
                                <li><a href="" class="nav-link-subsec">啤酒</a></li>
                                <li><a href="" class="nav-link-subsec">家电</a></li>
                                <li><a href="" class="nav-link-subsec">特种化工</a></li>
                                <li><a href="" class="nav-link-subsec">化肥</a></li>
                                <li><a href="" class="nav-link-subsec">3G</a></li>
                                <li><a href="" class="nav-link-subsec">食品加工</a></li>
                                <li><a href="" class="nav-link-subsec">中药</a></li>
                                <li><a href="" class="nav-link-subsec">服装</a></li>
                                <li><a href="" class="nav-link-subsec">通信光缆</a></li>
                                <li><a href="" class="nav-link-subsec">建筑与工程</a></li>
                                <li><a href="" class="nav-link-subsec">玻璃</a></li>
                                <li><a href="" class="nav-link-subsec">股指期货</a></li>
                                <li><a href="" class="nav-link-subsec">其他</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li class="nav-item active" id="nav-item-2">
                    <a href="" class="nav-link-sec">新闻</a>
                    <div class="subnav" id="subnav-2">
                        <div class="subnav-inset">
                            <ul class="subnav-list">
                                <li class="active"><a href="" class="nav-link-subsec">行情</a></li>
                                <li><a href="" class="nav-link-subsec">指标股</a></li>
                                <li><a href="" class="nav-link-subsec">金融</a></li>
                                <li><a href="" class="nav-link-subsec">地产</a></li>
                                <li><a href="" class="nav-link-subsec">航空</a></li>
                                <li><a href="" class="nav-link-subsec">钢铁</a></li>
                                <li><a href="" class="nav-link-subsec">煤炭</a></li>
                                <li><a href="" class="nav-link-subsec">重工机械</a></li>
                                <li><a href="" class="nav-link-subsec">电力资源</a></li>
                                <li><a href="" class="nav-link-subsec">汽车</a></li>
                                <li><a href="" class="nav-link-subsec">有色金属</a></li>
                                <li><a href="" class="nav-link-subsec">石油化工</a></li>
                                <li><a href="" class="nav-link-subsec">农林牧渔</a></li>
                                <li><a href="" class="nav-link-subsec">环保</a></li>
                                <li><a href="" class="nav-link-subsec">航天军工</a></li>
                                <li><a href="" class="nav-link-subsec">港口运输</a></li>
                            </ul>
                            <ul class="subnav-list">
                                <li><a href="" class="nav-link-subsec">新能源</a></li>
                                <li><a href="" class="nav-link-subsec">中小板</a></li>
                                <li><a href="" class="nav-link-subsec">电力设备</a></li>
                                <li><a href="" class="nav-link-subsec">科技类</a></li>
                                <li><a href="" class="nav-link-subsec">高速类</a></li>
                                <li><a href="" class="nav-link-subsec">机场类</a></li>
                                <li><a href="" class="nav-link-subsec">建筑用品</a></li>
                                <li><a href="" class="nav-link-subsec">水务</a></li>
                                <li><a href="" class="nav-link-subsec">仓储物流运输</a></li>
                                <li><a href="" class="nav-link-subsec">水泥</a></li>
                                <li><a href="" class="nav-link-subsec">电子类</a></li>
                                <li><a href="" class="nav-link-subsec">软件</a></li>
                                <li><a href="" class="nav-link-subsec">超市</a></li>
                                <li><a href="" class="nav-link-subsec">零售</a></li> 
                                <li><a href="" class="nav-link-subsec">材料</a></li>
                                <li><a href="" class="nav-link-subsec">酒店旅游</a></li>
                            </ul>
                            <ul class="subnav-list"> 
                                <li><a href="" class="nav-link-subsec">酒类</a></li>
                                <li><a href="" class="nav-link-subsec">造纸</a></li>
                                <li><a href="" class="nav-link-subsec">啤酒</a></li>
                                <li><a href="" class="nav-link-subsec">家电</a></li>
                                <li><a href="" class="nav-link-subsec">特种化工</a></li>
                                <li><a href="" class="nav-link-subsec">化肥</a></li>
                                <li><a href="" class="nav-link-subsec">3G</a></li>
                                <li><a href="" class="nav-link-subsec">食品加工</a></li>
                                <li><a href="" class="nav-link-subsec">中药</a></li>
                                <li><a href="" class="nav-link-subsec">服装</a></li>
                                <li><a href="" class="nav-link-subsec">通信光缆</a></li>
                                <li><a href="" class="nav-link-subsec">建筑与工程</a></li>
                                <li><a href="" class="nav-link-subsec">玻璃</a></li>
                                <li><a href="" class="nav-link-subsec">股指期货</a></li>
                                <li><a href="" class="nav-link-subsec">其他</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li class="nav-item active" id="nav-item-3">
                    <a href="" class="nav-link-sec">专栏</a>
                    <div class="subnav" id="subnav-3">
                        <div class="subnav-inset">
                            <ul class="subnav-list">
                                <li class="active"><a href="" class="nav-link-subsec">专栏</a></li>
                                <li><a href="" class="nav-link-subsec">指数分析</a></li>
                                <li><a href="" class="nav-link-subsec">个股分析</a></li>
                            </ul>
                            <ul class="subnav-list">
                                <li><a href="" class="nav-link-subsec">撰稿人</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li class="nav-item active" id="nav-item-4">
                    <a href="" class="nav-link-sec">当月主题</a>
                    <div class="subnav" id="subnav-4">
                        <div class="subnav-inset">
                            <ul class="subnav-list">
                                <li class="active"><a href="" class="nav-link-subsec">当月主题</a></li>
                                <li><a href="" class="nav-link-subsec">往期回顾</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li class="nav-item active" id="nav-item-5">
                    <a href="" class="nav-link-sec">管理</a>
                    <div class="subnav" id="subnav-6">
                        <div class="subnav-inset">
                            <ul class="subnav-list">
                                <li><a href="" class="nav-link-subsec">收藏</a></li>
                                <li><a href="" class="nav-link-subsec">账号</a></li>
                                <li><a href="" class="nav-link-subsec">退出</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
            </ul>
        </nav>
        </div>
        
        
        <!--        正文部分-->
        <div class="main-content">
            <!--        图表-->
            <div class="main-stock-data">
                GRAPH
            </div>

            <!--        主体-->
            <div class="main-left">
                <!--        新闻头条-->
                <div class="main-top-news">
                    <h1>今日头条</h1>
                    <%for(int i=0;i<articleList.list.length;i++){ %>
                    	<%if(articleList.list[i].articleType.compareTo("topNews")==0){ %>
                    		<div class="sub-news">
                        		<div class="sub-news-picture"><img src="picture/sub-news1.jpg" width="110px" height="80px;"></div>
                        		<div class="sub-news-content">
                            		<div><a><%out.write(articleList.list[i].articleTitle); %></a></div>
                            		<div><%out.write(articleList.list[i].articleSummary); %></div>
                            		<div><%out.write(articleList.list[i].articleTime); %></div>
                        		</div>
                    		</div>
                    	<%} %>
                    <%} %>
                    <div class="more-content"><a href="">更多 ></a></div>
                </div>
                <!--        实时新闻-->
                <div class="main-latest-news">
                    <h1>实时新闻</h1>
                    <%for(int i=0;i<articleList.list.length;i++){ %>
                    	<%if(articleList.list[i].articleType.compareTo("news")==0){ %>
                    		<div class="sub-news">
                        		<div class="sub-news-picture"><img src="picture/sub-news1.jpg" width="110px" height="80px;"></div>
                        		<div class="sub-news-content">
                            		<div><a><%out.write(articleList.list[i].articleTitle); %></a></div>
                            		<div><%out.write(articleList.list[i].articleSummary); %></div>
                            		<div><%out.write(articleList.list[i].articleTime); %></div>
                        		</div>
                    		</div>
                    	<%} %>
                    <%} %>
                    <div class="more-content"><a href="">更多 ></a></div>
                </div>
                <!--        专栏文章-->
                <div class="column">
                    <h1>专栏文章</h1>
                    <%for(int i=0;i<articleList.list.length;i++){ %>
                    	<%if(articleList.list[i].articleType.compareTo("commentary")==0){ %>
                    		<div class="sub-news">
                        		<div class="sub-news-picture"><img src="picture/sub-news1.jpg" width="110px" height="80px;"></div>
                        		<div class="sub-news-content">
                            		<div><a><%out.write(articleList.list[i].articleTitle); %></a></div>
                            		<div><%out.write(articleList.list[i].articleSummary); %></div>
                            		<div><%out.write(articleList.list[i].articleTime); %></div>
                        		</div>
                    		</div>
                    	<%} %>
                    <%} %>
                    <div class="more-content"><a href="">更多 ></a></div>
                </div>
            </div>

            <!--侧边栏        -->
            <div class="main-right">
                <!--        当月主题-->
                <div class="main-theme" style="background-image: url(<%= articleList.backgroundImage%>)">
                    <div>
                        <h1>当月主题</h1>
                        <p><%out.write(articleList.theme_title); %></p>
                        <hr/>
                        <p><%out.write(articleList.theme_summary); %></p>
                    </div>
                </div>
                <!--        广告-->
                <div class="advertise" style="background-image: url(<%= adbackground%>)">
                    <h1>广告</h1>
                </div>
                <!--        热门作者-->
                <div class="column-writer">
                    <h1>热门作者</h1>
                    <div class="sub-column-writer">
                        <p><img src="picture/adver.jpg">马云</p>
                        <p><img src="picture/adver.jpg">马云</p>
                        <p><img src="picture/adver.jpg">马云</p>
                    </div>
                </div>  
            </div>
        </div>
        
        <div class="footer">
            <div>
                <ul>
                    <li>相关功能</li>
                </ul>
                <ul>
                    <li>新闻订阅</li>
                    <li>市场分析</li>
                    <li>股评追踪</li>
                </ul>
            </div>
            <div>
                <ul>
                    <li>责任说明</li>
                </ul>
                <ul>
                    <li>专栏文章不代表本网站立场</li>
                    <li>股市有风险，投资需谨慎</li>
                </ul>
            </div>
            <div>
                <ul>
                    <li>网站设计</li>
                </ul>
                <ul>
                    <li>14348008 陈铭昕</li>
                    <li>14348032 胡彩芹</li>
                </ul>
            </div>
        </div>
    </body>
</html>