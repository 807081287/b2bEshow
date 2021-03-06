<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="/WEB-INF/stringutil.tld" prefix="util"%>
<head>
	<title>首页</title>
	<meta name="description"
		content=" 江苏华权有色炉料有限公司创建于1993年3月，是一家以专业生产钒铁及销售钒铁、钼铁、铬系列、锰系列、镍板等铁合金有色金属的综合性销售公司。" />
	<meta name="keywords"
		content="江苏华权有色炉料有限公司,有色金属,电解镍,赞比亚,金川电解钴,兼营有色金属等炉料,钒铁、钼铁、铬系列、锰系列、镍板等铁合金有色金属" />
	<link rel="stylesheet" href="<c:url value='/styles/index.css'/>"
		type="text/css" />
</head>
<body>
	<div id="">
		<script src="scripts/swfobject_source.js" type=text/javascript></script>
		<div id=dplayer2 style="WIDTH: 960px; HEIGHT: 240px"></div>
		<script language=javascript type=text/javascript>
			var titles = '欢迎参观|海纳百川|专业服务';
			var imgs='images/men.gif|images/baichuan.jpg|images/zhuanye.jpg';
			var urls='#|#|#';
			var pw = 960;
			var ph = 240;
			var sizes = 14;
			var Times = 3000;
			var umcolor = 0xFFFFFF;
			var btnbg =0xFF7E00;
			var txtcolor =0xFFFFFF;
			var txtoutcolor = 0x000000;
			var flash = new SWFObject('images/focus1.swf', 'mymovie', pw, ph, '7', '');
			flash.addParam('allowFullScreen', 'true');
			flash.addParam('allowScriptAccess', 'always');
			flash.addParam('quality', 'high');
			flash.addParam('wmode', 'Transparent');
			flash.addVariable('pw', pw);
			flash.addVariable('ph', ph);
			flash.addVariable('sizes', sizes);
			flash.addVariable('umcolor', umcolor);
			flash.addVariable('btnbg', btnbg);
			flash.addVariable('txtcolor', txtcolor);
			flash.addVariable('txtoutcolor', txtoutcolor);
			flash.addVariable('urls', urls);
			flash.addVariable('Times', Times);
			flash.addVariable('titles', titles);
			flash.addVariable('imgs', imgs);
			flash.write('dplayer2');
		</script>
	</div>

	<div id="main">

		<div id="main_left">
			<div id="area_news">
				<div class="box news-info">
					<span class="rc-tp"><span></span> </span>
					<div class="hd">
						<h3>
							<a href="<c:url value='/blog/categories/1'/>">公司动态</a>
						</h3>
					</div>
					<div class="bd">
						<ul class="info-list">
							<s:action name="blog!search" id="blogList" executeResult="false">
								<s:param name="queryBean.categoryId">1</s:param>
								<s:param name="queryBean.order">addTime</s:param>
								<s:param name="queryBean.desc">true</s:param>
								<s:param name="pagesize">8</s:param>
							</s:action>
							<s:iterator value="%{#blogList.blogs}" status="rowStatus">
								<li>
									<a href="<c:url value='/blog/view/${id}'/>" rel="bookmark">${title}</a>
								</li>
							</s:iterator>
						</ul>
					</div>
				</div>
			</div>

			<div id="area_about">
				<div class="about">
					<div id="about_lv1">
						<h3>
							<a href="<c:url value='/info/about'/>">公司简介</a>
						</h3>
					</div>
					<div id="about_lv2">
						<a href="<c:url value='/info/about'/>" title="点击查看详细简介">
							&nbsp;&nbsp;&nbsp;&nbsp;江苏华权有色炉料有限公司位于沪苏锡常长三角经济繁荣中心地带——江苏省江阴市月城镇，公司周边交通顺畅，锡澄、沿江、沪宁三条高速环绕而过，312国道、锡澄公路及大运河从旁穿越。
							<br>
							&nbsp;&nbsp;&nbsp;&nbsp;我公司创建于1993年3月，是一家以专业生产钒铁及销售钒铁、钼铁、铬系列、锰系列、镍板等铁合金有色金属的综合性销售公司。
						</a>
						<div style="margin-top: 10px; color: red">
							以质量为生命，诚信为根本，顾客为首要，管理为基础；携手共进，共创美好未来。
						</div>
					</div>
				</div>
			</div>

			<div id="area_price">

				<div class="price">

					<div id="price_lv1">
						<h3>
							<a href="<c:url value='/info/price'/>">报价中心</a>
						</h3>
					</div>
					<div id="price_lv2">
						<s:action name="info!browse" id="infoView" executeResult="false">
							<s:param name="info.url">price</s:param>
						</s:action>
						${infoView.info.content}
					</div>
				</div>
			</div>


		</div>

		<div id="main_right">

			<div id="area_credit">
				<div class="credit">
					<div id="credit_lv1">
						<h3>
							<a href="<c:url value='/album/view/3'/>">荣誉证书</a>
						</h3>
					</div>
					<div id="credit_lv2">
						<div id="demo"
							style="OVERFLOW: hidden; WIDTH: 230px; HEIGHT: 85px; margin-left: 10px;"
							class="TZYSpic">
							<table width="220" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td id="demo1">
										<s:action name="photo!search" id="photoList"
											executeResult="false">
											<s:param name="queryBean.albumId">3</s:param>
											<s:param name="queryBean.order">addTime</s:param>
											<s:param name="queryBean.desc">true</s:param>
										</s:action>
										<table width="480" border="0" align="center" cellpadding="0"
											cellspacing="5">
											<tr>
												<s:iterator value="%{#photoList.photos}" status="rowStatus">
													<td>
														<a href="<c:url value="/photo/view/${id}"/>"><img
																src="${pageContext.request.contextPath}/upload/photo/<s:date name='%{addTime}' format='yyyyMMdd' />/view/${id}.jpg"
																alt="${name}" height="80" /> </a>
													</td>
												</s:iterator>
											</tr>
										</table>
									</td>
									<td id="demo2"></td>
									<script type="text/javascript">
								var speed = 1;
								demo2.innerHTML = demo1.innerHTML;
								function Marquee() {
									if (demo2.offsetWidth - demo.scrollLeft <= 0)
										demo.scrollLeft -= demo1.offsetWidth;
									else {
										demo.scrollLeft++;
									}
								}
								var MyMar = setInterval(Marquee, speed);
								demo.onmouseover = function() {
									clearInterval(MyMar)
								}
								demo.onmouseout = function() {
									MyMar = setInterval(Marquee, speed)
								}
							</script>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>

			<div id="area_company">
				<div class="company">
					<div id="company_lv1">
						<h3>
							<a href="<c:url value='/info/company'/>">下属公司</a>
						</h3>
					</div>
					<div id="company_lv2">
						<ul>
							<li>
								<a href="<c:url value="/info/company"/>"><img
										src="${pageContext.request.contextPath}/images/huali.gif"
										title="下属公司：江阴市华达钢铁炉料有限公司" /> </a>
							</li>
							<li>
								<a href="<c:url value="/info/company"/>"><img
										src="${pageContext.request.contextPath}/images/huada.gif"
										title="下属公司：新沂市华力复合金属材料有限公司" /> </a>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<div id="area_contact">
				<div class="contact">
					<div id="contact_lv1">
						<h3>
							<a href="<c:url value='/info/contact'/>">联系方式</a>
						</h3>
					</div>
					<div id="contact_lv2">
						<ul>
							<li>
								地址：江苏省江阴市月城镇工业园区花塘路
							</li>
							<li>
								电话：0510-86880100<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0510-86891620
							</li>
							<li>
								手机：徐 琪 13861638770
								<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;许华唯 13812130287
							</li>
						</ul>
					</div>
				</div>
			</div>

			<div id="area_map">
				<div class="map">
					<div id="map_lv1">
						<h3>
							<a
								href="http://map.baidu.com/?newmap=1&ie=utf-8&s=s%26wd%3D%E6%B1%9F%E8%8B%8F%E5%8D%8E%E6%9D%83%E6%9C%89%E8%89%B2%E7%82%89%E6%96%99%E6%9C%89%E9%99%90%E5%85%AC%E5%8F%B8">地理位置</a>
						</h3>
					</div>
					<div id="map_lv2">
						<a
							href="http://map.baidu.com/?newmap=1&ie=utf-8&s=s%26wd%3D%E6%B1%9F%E8%8B%8F%E5%8D%8E%E6%9D%83%E6%9C%89%E8%89%B2%E7%82%89%E6%96%99%E6%9C%89%E9%99%90%E5%85%AC%E5%8F%B8"
							target="_blank"><img src="images/map.png" title="点击百度地图搜索" />
						</a>
					</div>
				</div>
			</div>

			<div id="area_link">

				<div class="link">

					<div id="link_lv1">
						<h3>
							<a href="<c:url value='/info/link'/>">友情链接</a>
						</h3>
					</div>
					<div id="link_lv2">
						<ul>
							<li>
								<a href="http://www.mysteel.com" target="_blank"><img border="0"
										src="images/mysteel.gif" title="我的钢铁" width="110"/>
							</li>
							<li>
								<a href="http://www.smm.cn" target="_blank"><img border="0"
										src="images/smm.jpg" title="上海有色金属网" width="110"/>
							</li>
							<li>
								<a href="http://www.vmetal.cn" target="_blank"><img border="0"
										src="images/vmetal.jpg" title="钒网站" width="110"/>
							</li>
							<li>
								<a href="http://www.molyworld.com" target="_blank"><img border="0"
										src="images/molyworld.jpg" title="钼网站" width="110"/>
							</li>
							<li>
								<a href="http://www.feb2b.com" target="_blank"><img border="0"
										src="images/feb2b.jpg" title="中华铁合金商务网" width="110"/>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
