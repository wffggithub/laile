<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title><?php echo ($seotitle); ?></title>

    <meta name="keywords" content="<?php echo ($keywords); ?>" />

    <meta name="description" content="{description}" />
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
<div class="banner h378 ibanner">
    <img src="<?php echo ($banner["image_path"]); ?>" alt="" />
</div>
<div class="middlle p-r mt60 list_article_type">
    <div class="w1200">
        <div class="aricle_arrr">
            <div class="text-center">
                <img src="<?php echo ($info["image_path"]); ?>" alt="" />
            </div>
            <h1>
                <?php echo ($info["title"]); ?>
            </h1><br/>
            <?php echo ($info["content"]); ?>
        </div>
        <div class="fhbtn">
            <a href="javascript:history.back(-1)">返回列表</a>
        </div>


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
</body>
</html>