<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title><?php echo ($seotitle); ?></title>
	<meta name="keywords" content="<?php echo ($keywords); ?>" />
	<meta name="keywords" content="{description}" />
	<link rel="stylesheet" href="/Public/laile/css/style.css" />
</head>
<body style="background-color: #eeeeee;">
<div class="header h73 l-h-73">

	<div class="w1200 clearfix">

		<div class="fl logotype">

			<a href="/"><img src="/Public/laile/images/logo.png" alt="" /></a>

		</div>

		<div class="fl teltype">

			<div class="clearfix">

				<div class="fl"><img src="/Public/laile/images/tel.png" alt="" /></div>

				<div class="fl">

					<p class="fz12">

						服务热线

					</p>

					<p class="fz18">

						400 900 8698

					</p>

				</div>

			</div>

		</div>

		<div class="fr nav">

			<ul class="clearfix">
				<?php if(is_array($channelTop)): $i = 0; $__LIST__ = $channelTop;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><li><a href="<?php echo U($v['link']);?>"><?php echo ($v["name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>

			</ul>

		</div>

	</div>

</div>
<div class="middlle p-r maptype slideTxtBox">
	<div class="clearfix maptitle">
		<div class="w1200 hd">
			<ul class="clearfix">
				<?php if(is_array($all)): $i = 0; $__LIST__ = $all;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><li <?php if($v["id"] == $id): ?>class="on"<?php endif; ?>><a href="<?php echo U('index',array('id'=>$v['id']));?>"><?php echo ($v["position"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>

			</ul>
		</div>
	</div>
	<div class="clearfix bd">
		<ul>
			<div id="outer-box">
				<div id="container">
				</div>
				<div id="panel">
					<div id="intro">
						<h3>定位查询</h3>
					</div>
					<ul id="my-list"></ul>
				</div>
			</div>
		</ul>
	</div>
</div>
<div class="footer h326 bg-c-081227 pdt30">

	<div class="footnav">

		<div class="w1200">

			<div class="fl fntype">

				<div class="clearfix">

					<?php if(is_array($channelFoot)): $i = 0; $__LIST__ = $channelFoot;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="fl">

							<h1><a href="<?php echo U($vo['link']);?>" style="color:#ffffff"><?php echo ($vo["name"]); ?></a></h1>

							<ul>
								<?php if(is_array($vo["child"])): $i = 0; $__LIST__ = $vo["child"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$voo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo U($vo['link'],['id'=>$voo['id']]);?>"><?php echo ($voo["name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
							</ul>

						</div><?php endforeach; endif; else: echo "" ;endif; ?>
				</div>

			</div>

			<div class="fr ewmtype">

				<div class="text-center">

					<div>

						<img src="/Public/laile/images/ewm.png" alt="" />

					</div>

					<div class="text-center">

						<p>扫一扫添加微信</p>

					</div>

				</div>

			</div>

		</div>

	</div>

	<div class="copyright pd30-0">

		<div class="w1200 fcffffff"><?php echo (C("footer")); ?> <?php echo (C("footer-address")); ?></div>

	</div>

</div>

<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=j40Gv039eBvmGrNoO5ooTzDl"></script>
<script src="http://apps.bdimg.com/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="/Public/laile/js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript">
    jQuery(".banner").slide({mainCell:".bd ul",trigger:"click",effect:"fold",autoPlay:false,easing:"easeOutCirc"});
    jQuery(".banner").hover(function(){
        $(".banner .prev").stop(true,true).animate({
            left: '0',opacity: '1'
        })
        $(".banner .next").stop(true,true).animate({
            right: '-1200',opacity: '1'
        })
    },function(){
        $(".banner .prev").stop(true,true).animate({
            left: '-90',opacity: '0'
        })
        $(".banner .next").stop(true,true).animate({
            right: '-1280',opacity: '0'
        });
    });/*鼠标移过，左右按钮显示*/
    // jQuery(".slideTxtBox").slide();

</script>
<script type="text/javascript" src='http://webapi.amap.com/maps?v=1.3&key=43ff1694711e6bf80c9af20924b8737c'></script>
<!-- UI组件库 1.0 -->
<script src="http://webapi.amap.com/ui/1.0/main.js?v=1.0.10"></script>
<script type="text/javascript">
    //创建地图
    var map = new AMap.Map('container', {
        zoom: 9
    });

    AMapUI.loadUI(['misc/MarkerList', 'overlay/SimpleMarker', 'overlay/SimpleInfoWindow'],
        function(MarkerList, SimpleMarker, SimpleInfoWindow) {

            var markerList = new MarkerList({
                //关联的map对象
                map: map,
                //列表的dom容器的id
                listContainer: 'my-list',

                //返回数据项的Id
                getDataId: function(dataItem, index) {
                    //index表示该数据项在数组中的索引位置，从0开始，如果确实没有id，可以返回index代替
                    return dataItem.id;
                },
                //返回数据项的位置信息，需要是AMap.LngLat实例，或者是经纬度数组，比如[116.789806, 39.904989]
                getPosition: function(dataItem) {
                    return dataItem.position;
                },
                //返回数据项对应的Marker
                getMarker: function(dataItem, context, recycledMarker) {

                    //存在可回收利用的marker
                    if (recycledMarker) {
                        //直接更新内容返回
                        recycledMarker.setIconLabel(context.id);
                        recycledMarker.setIconStyle(dataItem.iconStyle);
                        return recycledMarker;
                    }

                    //返回一个新的Marker
                    return new SimpleMarker({
                        containerClassNames: 'my-marker',
                        iconStyle: dataItem.iconStyle,
                        iconLabel: context.id
                    });
                },
                //返回数据项对应的infoWindow
                getInfoWindow: function(dataItem, context, recycledInfoWindow) {

                    if (recycledInfoWindow) {
                        //存在可回收利用的infoWindow, 直接更新内容返回
                        recycledInfoWindow.setInfoTitle(dataItem.title);
                        recycledInfoWindow.setInfoBody(dataItem.desc);
                        return recycledInfoWindow;
                    }

                    //返回一个新的InfoWindow
                    return new SimpleInfoWindow({
                        offset: new AMap.Pixel(0, -37),
                        infoTitle: dataItem.title,
                        infoBody: dataItem.desc
                    });
                },
                getListElement: function(dataItem, context, recycledListElement) {

                    // var tpl = '<button style="background-color:<%= dataItem.iconStyle %>">' +
                    //     '<%- dataId %></button> <%- dataItem.title %>';
                    var tpl = '<i class="num"><%- dataId %></i><%- dataItem.title %> ';

                    var content = MarkerList.utils.template(tpl, {
                        dataItem: dataItem,
                        dataId: context.id
                    });

                    if (recycledListElement) {
                        //存在可回收利用的listElement, 直接更新内容返回
                        recycledListElement.innerHTML = content;
                        return recycledListElement;
                    }

                    //返回一段html，MarkerList将利用此html构建一个新的dom节点
                    return '<li>' + content + '</li>';
                }

            });

            //构建一个数据项数组，数据项本身没有格式要求，但需要支持下述的getDataId和getPosition
            var data = [<?php echo ($position['detail']); ?>];

            //展示该数据
            markerList.render(data);
        });
</script>

</body>
</html>