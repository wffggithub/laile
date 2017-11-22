<?php
/**
 *
 * 版权所有：恰维网络<qwadmin.qiawei.com>
 * 作    者：寒川<hanchuan@qiawei.com>
 * 日    期：2016-01-21
 * 版    本：1.0.0
 * 功能说明：前台公用控制器。
 *
 **/

namespace Mobile\Controller;

use Think\Controller;
use Vendor\Tree;

class ComController extends Controller
{

    public function _initialize()
    {
        C(setting());
        /*
        $links = M('links')->limit(10)->order('o ASC')->select();
        $this->assign('links',$links);
        */
        //导航
        //顶部一级导航
        $channelTop = M('category')->field('id,pid,name,link')->where(['pid'=>0,'position'=>['in','1,3']])->order('o asc')->select();
        //底部一级导航
        $channelFoot = M('category')->field('id,pid,name,link')->where(['pid'=>0,'position'=>['in','2,3']])->order('o asc')->select();
        //首页导航id
        $this->home_channel_id = $channelTop[0]['id'];
        //二级导航
        $channel_two = M('category')->field('id,pid,name,link')->where(['pid'=>['not in','0']])->order('o asc')->select();
        foreach ($channelFoot as $k => &$v) {
            $v['child'] = [];
            foreach ($channel_two as $key => $val) {
                if ($v['id'] == $val['pid']) {
                    $v['child'][] = $val;
                }
            }
        }
        $this->assign('channelTop', $channelTop);//顶部导航
        $this->assign('channelFoot', $channelFoot);//底部导航

        $m = M();
        $prefix = C('DB_PREFIX');
        $current_action_name = "index" ; //方法默认全为index
        $current = $m->query("SELECT s.id,s.name,s.pid,p.pid as ppid,p.name pname FROM {$prefix}category s left join {$prefix}category p on p.id=s.pid where s.link='" . CONTROLLER_NAME . '/' . $current_action_name . "'");
        $this->assign('current', $current[0]);

      /*  //获取友情链接
        $friendLink = M('links')->select();
        $this->assign('friendLink',$friendLink);

        //获取地址、邮件、招商电话
        $contact = M('contact')->field('addr,phone,email')->find();
        $this->assign('contact',$contact);
        //获取音频地址
        $music = M('video')->where(['is_video'=>0,'position'=>0])->find();
        $this->assign('music',$music);*/

    }
}