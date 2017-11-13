<?php
/**
 *
 * 版权所有：恰维网络<qwadmin.qiawei.com>
 * 作    者：寒川<hanchuan@qiawei.com>
 * 日    期：2016-01-20
 * 版    本：1.0.0
 * 功能说明：网站设置控制器。
 *
 **/

namespace Qwadmin\Controller;

class SettingController extends ComController
{
    public function setting()
    {

        $vars = M('setting')->where('type=1')->select();
        $this->assign('vars', $vars);
        $water = M('setting')->where('type=2')->find();
        $this->assign('water',$water);
        $position = M('setting')->where('type=3')->find();
        $this->assign('position',$position);

        $this->display();
    }

    public function update()
    {

        $data = $_POST;
        $data['sitename'] = isset($_POST['sitename']) ? strip_tags($_POST['sitename']) : '';
        $data['title'] = isset($_POST['title']) ? strip_tags($_POST['title']) : '';
        $data['keywords'] = isset($_POST['keywords']) ? strip_tags($_POST['keywords']) : '';
        $data['description'] = isset($_POST['description']) ? strip_tags($_POST['description']) : '';
        $data['footer'] = isset($_POST['footer']) ? $_POST['footer'] : '';
        $data['water_image_path'] = isset($_POST['water_image_path']) ? $_POST['water_image_path'] : '';
        $data['position'] = isset($_POST['position']) ? $_POST['position'] : 0;
        $Model = M('setting');
        foreach ($data as $k => $v) {
            $Model->data(array('v' => $v))->where("k='{$k}'")->save();
        }
        //清除旧的缓存数据
        $cache = \Think\Cache::getInstance();
        $cache->clear();
        addlog('修改网站配置。');
        $this->success('恭喜，网站配置成功！');
    }
}