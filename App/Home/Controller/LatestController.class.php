<?php

namespace Home\Controller;

use Think\Controller;

class LatestController extends ComController
{
    /**
     * 价值观
     */
    public function index()
    {
        $Pcate = M('category')->field('id,name')->where(['pid'=>0,'dir'=>CONTROLLER_NAME])->find();
        //banner图
        $banner = M('banner')->where(['sid'=>$Pcate['id']])->find();
        $this->assign('banner',$banner);

        $all = M('category')->field('id,name')->where(['pid'=>$Pcate['id']])->select();
        $sid = I('id',0,'intval') == 0 ? $all[0]['id'] : I('id',0,'intval');
        $info = M('latest')->alias('L')->field('L.*,c.name')->join('__CATEGORY__ c ON c.id=L.sid')->where(['sid'=>$sid])->find();
        $this->assign('name',$info['name']);
        $this->assign('all',$all);
        $this->assign('info',$info);
        $this->assign('seotitle',$info['seotitle']);
        $this->assign('keywords',$info['keywords']);
        $this->assign('description',$info['description']);
        $this->display();
    }

    public function index3()
    {
        $page = I('p',1,'intval');
        $num = 4;//每页显示的数量
        $this->assign('num',$num);

        if (I('pid') == 0) { //默认显示第一个二级导航数据
            $pid = I('id');
            if (empty($pid)) { //首页点击最新资讯
                $pid = M('category')->where(['dir'=>CONTROLLER_NAME,'pid'=>0])->getField('id');
            }
            $channel_id = M('category')->where(['pid'=>$pid])->order('o asc')->getField('id');
        } else {
            $pid = I('pid');
            $channel_id = I('id'); //导航id
        }

        $this->assign('pid',$pid);
        $this->assign('p',$page);
        $this->assign('channel_id',$channel_id); //需要高亮的二级导航id
        // TODO 获取banner  pc图
        $bannerPC = M('banner')->field('image_path')->where(['is_position'=>0,'sid'=>$pid])->order('o desc')->find();
        $this->assign('bannerPC',empty($bannerPC) ? [] :  $bannerPC);

        //获取所有二级导航
        $cate_id = M('category')->where(['dir'=>'Latest','pid'=>0])->getField('id'); //获取产品新闻动态导航id
        $latest_cate = M('category')->field('id,pid,name,link')->where(['pid'=>$cate_id])->order('o asc')->select();
        $this->assign('latest_cate',empty($latest_cate) ? [] : $latest_cate);
        //获取热门推荐
        $hotData =M('latest')->field('id,sid,title,image_path,content,t')->where(['sid'=>$channel_id])->order('look_count desc')->limit(0,10)->select();
        foreach ($hotData as $k=>&$v){
            $v['t'] = date('Y-m-d H:i:s',$v['t']);
            $v['content'] = substr(htmlspecialchars_decode($v['content']),0,400).'......';
        }
        $this->assign('hotData',empty($hotData) ? [] : $hotData);

        //新闻内容

        $count = M('latest')->where(['sid'=>$channel_id])->count();
        $this->assign('count',$count);
        $allPage = ceil($count/$num);
        $this->assign('allPage',$allPage+1); //+1是模板中显示的需要

        $info = M('latest')->field('id,title,image_path,content,t')->where(['sid'=>$channel_id])->page("$page,$num")->order('t desc')->select();

        foreach ($info as $k=>&$v){
            $v['content'] = strip_tags(htmlspecialchars_decode($v['content']));
        }

        $this->assign('info',$info);
        $Page  = new \Think\Page($count,$num);// 实例化分页类 传入总记录数和每页显示的记录数
        $Page->setConfig('prev','上一页');
        $Page->setConfig('next','下一页');
        $Page->setConfig('header', '共 %TOTAL_ROW% 条');
       /* foreach($map as $key=>$val) {
            $Page->parameter[$key] = $val;
        }*/
        $show  = $Page->show();// 分页显示输出
        if ($num < $count) {
            //为了添加分类选择、共 ##页、##条
            $show = strstr($show,"</ul></div>",true);
        }
        $this->assign('page',$show);// 赋值分页输出

        $this->display();

    }

    /**
     * 内容详情
     */
    public function detail()
    {
        $id = I('id');
        //浏览量+1
        M('latest')->where(['id'=>$id])->setInc('look_count');

        $channel_id = I('channel_id');
        $this->assign('channel_id',$channel_id); //需要高亮的二级导航id

        $pid = M('category')->where(['id'=>$channel_id])->getField('pid');
        $this->assign('pid',$pid);

        $info = M('latest')->field('id,title,look_count,content,t')->where(['id'=>$id])->find();
        $info['content'] = htmlspecialchars_decode($info['content']);
        $this->assign('info',$info);

        //获取下一条数据
        $downData = M('latest')->field('id,title')->where(['sid'=>$channel_id,'t'=>['lt',$info['t']]])->order('t desc')->find();
        $this->assign('downData',$downData);
        //获取上一条数据
        $upData = M('latest')->field('id,title')->where(['sid'=>$channel_id,'t'=>['gt',$info['t']]])->order('t asc')->find();

        $this->assign('upData',$upData);


        // TODO 获取banner  pc图
        $bannerPC = M('banner')->field('image_path')->where(['is_position'=>0,'sid'=>$pid])->order('o desc')->find();
        $this->assign('bannerPC',empty($bannerPC) ? [] :  $bannerPC);

        //获取所有二级导航
        $cate_id = M('category')->where(['dir'=>'Latest','pid'=>0])->getField('id'); //获取产品新闻动态导航id
        $latest_cate = M('category')->field('id,pid,name,link')->where(['pid'=>$cate_id])->order('o asc')->select();
        $this->assign('latest_cate',empty($latest_cate) ? [] : $latest_cate);

        $position = array();
        foreach ($latest_cate as $k=>$v){
            $position[$v['id']] = $v['name'];
        }
        $this->assign('position',$position);

        $this->display();
    }

}