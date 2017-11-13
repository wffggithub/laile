<?php if (!defined('THINK_PATH')) exit();?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>

	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">

	<title><?php echo ($seotitle); ?></title>

	<meta name="keywords" content="<?php echo ($keywords); ?>" />

	<meta name="description" content="{description}" />



	<link rel="stylesheet" href="/Public/laile/css/style.css" />
	<script type="text/javascript">
        var browser = {
            versions : function() {
                var u = navigator.userAgent, app = navigator.appVersion;
                return ;
            }()
        }
        if(browser.versions.mobile){
            window.location.href="/m/";
        }
	</script>

</head>

<body>

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

<div class="banner dowebok">

	<div class="hd">

		<ul><li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>

	</div>

	<div class="bd">

		<ul>

			<?php if(is_array($image)): $i = 0; $__LIST__ = $image;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><li><a href="<?php echo U($v['link']);?>"><img src="<?php echo ($v["image_path"]); ?>" /></a></li><?php endforeach; endif; else: echo "" ;endif; ?>

		</ul>

	</div>



	<!-- 下面是前/后按钮代码，如果不需要删除即可 -->

	<div class="banner_ctr">

		<a class="prev" href="javascript:void(0)"></a>

		<a class="next" href="javascript:void(0)"></a>

	</div>

	<div class="ico4"><p>我来玩<br>要合作</p></div>

</div>

<div class="middlle indexjpg p-r">

	<div class="w1200 h649">

		<div class="hidd">
			<div class="p-a p1"><a href="/zuixinhuodong/20170820/28.html"><img src="/uploads/171112/1-1G1121I93C47-lp.jpg" alt="" /></a></div>
			<div class="p-a p2"><a href="/zuixinhuodong/20170806/2.html"><img src="http://cunchu.cuteboy.net/1080p.jpg?imageMogr2/auto-orient/thumbnail/1200x608!/blur/1x0/quality/100|imageslim" alt="" /></a></div>
			<div class="p-a p3"><a href="/zuixinhuodong/20170819/27.html"><img src="http://cunchu.cuteboy.net/1080p.jpg?imageMogr2/auto-orient/thumbnail/1200x608!/blur/1x0/quality/100|imageslim" alt="" /></a></div>
			<div class="p-a p4"><a href="/zuixinhuodong/20170806/1.html"><img src="http://cunchu.cuteboy.net/1080p.jpg?imageMogr2/auto-orient/thumbnail/1200x608!/blur/1x0/quality/100|imageslim" alt="" /></a></div>

			<!-- 			<div class="p-a p2"></div>
            
                        <div class="p-a p3"></div>
            
                        <div class="p-a p4"></div> -->

		</div>

		<div class="p-a p-a1">

			<div class="p-b p5"><a href="<?php echo U('Activity/index');?>">我来玩</a></div>

		</div>

		<div class="p-a p-a2">

			<div class="p6"><a href="<?php echo U('Cooperation/index');?>">要合作</a></div>

		</div>

		<div class="p-a p7"></div>

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

        })

    });/*鼠标移过，左右按钮显示*/



</script>

<script>

    $(document).ready(function(){

        $(".p-b").click(function(){

            $(".hidd").toggle();

        });

    });

</script>

</body>

</html>