<?php
/**
 *
 * 版权所有：恰维网络<qwadmin.qiawei.com>
 * 作    者：寒川<hanchuan@qiawei.com>
 * 日    期：2016-09-20
 * 版    本：1.0.0
 * 功能说明：文章控制器。
 *
 **/

namespace Qwadmin\Controller;

use Vendor\Tree;

class VideoController extends ComController
{

    public function add()
    {
        $this->display('form');
    }

    public function index($sid = 0, $p = 1)
    {
        $video = M('video')->select();
        foreach ($video as $k => &$v){
            $v['is_video'] = $v['is_video'] == 0 ? '音频' : '视频';
            $v['position'] = $v['position'] == 0 ? '全站' : ($v['position'] == 1 ? '首页' : ($v['position'] == 2 ? '产品中心' : '招商加盟'));
        }

        $this->assign('video',$video);
        $this->display();
    }

    public function del()
    {

        $aids = isset($_REQUEST['aids']) ? $_REQUEST['aids'] : false;
        if ($aids) {
            if (is_array($aids)) {
                $aids = implode(',', $aids);
                $map['id'] = array('in', $aids);
            } else {
                $map = 'id=' . $aids;
            }
            if (M('video')->where($map)->delete()) {
                //addlog('删除文章，AID：' . $aids);
                $this->success('恭喜，删除成功！',U('index'));
            } else {
                $this->error('参数错误！');
            }
        } else {
            $this->error('参数错误！');
        }

    }

    public function edit($id)
    {

        $id = intval($id);
        $video = M('video')->where('id=' . $id)->find();
        if ($video) {

            $this->assign('video', $video);
        } else {
            $this->error('参数错误！');
        }
        $this->display('form');
    }

    public function update($id = 0)
    {

        $id = intval($id);
        $data['url'] = isset($_POST['url']) ? $_POST['url'] : false;
        $data['is_video'] = isset($_POST['is_video']) ? $_POST['is_video'] : false;
        $data['position'] = isset($_POST['position']) ? $_POST['position'] : false;
        $data['t'] = time();

        if ($id) {
            M('video')->data($data)->where('id=' . $id)->save();
           /* addlog('编辑文章，AID：' . $id);*/
            $this->success('恭喜！编辑成功！',U('index'));
        } else {
            $id = M('video')->data($data)->add();
            if ($id) {
                /*addlog('新增文章，AID：' . $aid);*/
                $this->success('恭喜！新增成功！',U('index'));
            } else {
                $this->error('抱歉，新增失败！');
            }

        }
    }
}