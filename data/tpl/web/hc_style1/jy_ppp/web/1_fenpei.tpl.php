<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/nav', TEMPLATE_INCLUDEPATH)) : (include template('web/nav', TEMPLATE_INCLUDEPATH));?>
<ul class="nav nav-tabs">
    <li class="active"><a href="<?php  echo $this->createWebUrl('fenpei');?>">分配管理</a></li>
</ul>
<?php  if($op =="display") { ?>
	<div class="panel panel-info">
	<div class="panel-heading">筛选</div>

	<div class="panel-body">

		<form action="./index.php" method="get" class="form-horizontal" role="form">

			<input type="hidden" name="c" value="site" />
			<input type="hidden" name="a" value="entry" />
        	<input type="hidden" name="m" value="jy_ppp" />
        	<input type="hidden" name="do" value="fenpei" />


			<div class="form-group">
				<label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label">关键字</label>
				<div class="col-xs-12 col-sm-8 col-lg-9">
					<input class="form-control" name="keyword" id="" type="text" <?php  if(!empty($_GPC['id'])) { ?>value="<?php  echo $list[0]['nicheng'];?>"<?php  } else { ?>value="<?php  echo $_GPC['keyword'];?>"<?php  } ?> placeholder="用户昵称，手机" >
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label">时间筛选</label>
				<div class="col-xs-12 col-sm-8 col-lg-9">
					<?php  echo tpl_form_field_daterange('time', $time);?>
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label">区域筛选</label>
				<div class="col-xs-3 col-sm-2 col-lg-2" id="live">
					<select name="province" id="live_province" class="form-control"></select>
				</div>
				<div class="col-xs-3 col-sm-2 col-lg-2">
					<select name="city" id="live_city" class="form-control"></select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label">性别筛选</label>
				<div class="col-xs-3 col-sm-2 col-lg-2">
					<select name="sex" class="form-control">
						<option value="0">请选择性别</option>
						<option value="1" <?php  if($_GPC['sex']==1) { ?>selected<?php  } ?>>男</option>
						<option value="2" <?php  if($_GPC['sex']==2) { ?>selected<?php  } ?>>女</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label">状态筛选</label>
				<div class="col-xs-3 col-sm-2 col-lg-2">
					<select name="type" class="form-control">
						<option value="0">请选择状态</option>
						<option value="1" <?php  if($_GPC['type']==1) { ?>selected<?php  } ?>>已分配</option>
						<option value="2" <?php  if($_GPC['type']==2) { ?>selected<?php  } ?>>未分配</option>
					</select>
				</div>
			</div>

			<div class="form-group">
			 	<div class=" col-xs-12 col-sm-2 col-lg-2">

					<button class="btn btn-default"><i class="fa fa-search"></i> 搜索</button>

				</div>
			</div>
		</form>
	</div>
	</div>
<?php  } ?>
<?php  if($op=='display') { ?>
	<div class="panel panel-default">

		<div class="panel-heading">用户详细数据  |  总数:<?php  echo $total;?></div>

		<div class="panel-body table-responsive">

		    <form action="" method="post" onsubmit="">

			<table class="table table-hover">

				<thead class="navbar-inner">

					<tr>

						<th style="width:1%;" class="row-first"></td>

						<th style="width:5%;">会员ID</th>

						<th style="width:8%;">会员昵称</th>

						<th style="width:7%;">性别 </th>

						<th style="width:7%;">生日 </th>

						<th style="width:7%;">手机账号 </th>

						<th style="width:8%;">区域</th>

						<th style="width:8%;">所属店员</th>

						<th style="width:10%;">注册时间</th>

						<th style="width:20%;">操作</th>

					</tr>

				</thead>

				<tbody id="main">
					<?php  $time = time();?>

					<?php  if(is_array($list)) { foreach($list as $row) { ?>

					<tr class="selectedTr" >

					    <td><input  style="display:none" type="checkbox" name="ids[]" value="<?php  echo $row['id'];?>" data-dyid="<?php  echo $row['dyid'];?>" /></td>

					    <td><?php  echo $row['id'];?></td>

						<td  style="white-space:normal;word-break:break-all"><?php  echo $row['nicheng'];?></td>

						<td><?php  if($row['sex']==1) { ?>男<?php  } else { ?>女<?php  } ?></td>

						<td><?php  echo date('Y-m-d',$row['brith'])?></td>

						<td  style="white-space:normal;word-break:break-all"><?php  echo $row['mobile'];?></td>

						<td  style="white-space:normal;word-break:break-all"><?php  echo $province[$row['province']];?></td>

						<td  style="white-space:normal;word-break:break-all"><?php  echo $row['username'];?></td>

						<td  style="white-space:normal;word-break:break-all"><?php  echo date('Y年n月j日 G:i', $row['createtime']);?></td>

						<td style="white-space:normal;word-break:break-all">

<!-- 						<a href="<?php  echo $this->CreateWebUrl('xinxi',array('op'=>'member','mid'=>$row['id']))?>"><div class="btn btn-info">私信Ta</div></a> -->

						<!-- <a href="<?php  echo $this->CreateWebUrl('member',array('op'=>'edit','id'=>$row['id']))?>"><div class="btn btn-default">编辑信息</div></a> -->

						<a href="<?php  echo $this->CreateWebUrl('member',array('op'=>'mingxi','id'=>$row['id']))?>"><div class="btn btn-success">用户详情</div></a>
						<?php  if(!empty($row['dyid'])) { ?>
						<a href="<?php  echo $this->CreateWebUrl('dianyuan',array('op'=>'edit','id'=>$row['dyid']))?>"><div class="btn btn-info">工作人员</div></a>
						<?php  } ?>
						<a onclick="return confirm('此操作不可恢复，确认吗？'); return false;" href="<?php  echo $this->CreateWebUrl('member',array('op'=>'del2','id'=>$row['id']))?>"><div class="btn btn-danger">删除</div></a>


						</td>

					</tr>

					<?php  } } ?>

					<tr>
						<td colspan="2"></td>
						<td colspan="2"><div class="btn btn-info" onclick="all2()">全选</div></td>
						<td colspan="2"><div class="btn btn-primary" onclick="all3()">全不选</div></td>
						<td colspan="2"><div class="btn btn-danger" onclick="delall()">删除选中的</div></td>
						<td colspan="2"><div class="btn btn-success" onclick="fenpei()">分配选中的</div></td>
					</tr>

				</tbody>

			</table>
			<?php  echo $pager;?>

			</form>
	    </div>
	    <div id="dianyuan_div" style="width:100%;height:100%;position:fixed;left:0;top:0;background:rgba(0,0,0,.7);display:none"><div style="background:#eee;border-radius:5px;width:50%;height:50%;margin:100px auto;padding:20px"><div style="overflow-y:scroll;height:90%;width:100%">
	    	<table class="table table-hover">

				<thead class="navbar-inner">

					<tr>

						<th style="width:1%" >编号</th>
						<th style="width:5%" >编号</th>
						<th style="width:15%">用户名</th>
						<th style="width:10%">微信昵称</th>
						<th style="width:15%">微信头像</th>
						<th style="width:10%">拥有用户</th>
						<th style="width:15%">手机</th>
						<th style="width:25%">操作</th>

					</tr>

				</thead>

				<tbody id="main">

					<?php  if(is_array($dianyuan)) { foreach($dianyuan as $item) { ?>

					<tr class="selectedTr2" >

					    <td><input  style="display:none" type="checkbox" name="dyids[]" value="<?php  echo $item['id'];?>" /></td>
					    <td>
							<p><?php  echo $item['id'];?></p>
	                	</td>
	                	<td>
							<p><?php  echo $item['username'];?></p>
	                	</td>
	                	<td>
							<p><?php  echo $item['nickname'];?></p>
	                	</td>
	                	<td>
							<img style="width:70px" src="<?php  echo $item['avatar'];?>"/>
	                	</td>
	                	<td>
							<p><?php  echo $item['num'];?></p>
						</td>
						<td>
							<p><?php  echo $item['mobile'];?></p>
						</td>
						<td>
								<a href="<?php  echo $this->createWebUrl('dianyuan', array('op' => 'edit','id'=> $item['id']))?>"><div class="btn btn-info">编辑店员</div></a>&nbsp;<a onclick="return confirm('此操作不可恢复，确认吗？'); return false;" href="<?php  echo $this->createWebUrl('dianyuan', array('op' => 'del','id' => $item['id']))?>"><div class="btn btn-danger">删除</div></a>
						</td>

					</tr>

					<?php  } } ?>

				</tbody>

			</table>
	    </div><div style="text-align:center;margin:10px auto;width:100%"><span onclick="cancelBtn()" class="btn btn-info">取消分配</span><span class="btn btn-primary" style="margin-left:80px" onclick="fenpei2()">确认分配</span></div></div></div>

	</div>
	<script src="../addons/jy_ppp/js/area_id.js"></script>
	<script>
		$("#dianyuan_div").bind("click",function(event){
			if(event.target == this){
				$(this).hide();
			}
		});
		function cancelBtn(){
			$("#dianyuan_div").hide();
		}
		function all2()
		{
		    for(var i=0;i<$(".selectedTr").length;++i){
		        $(".selectedTr").eq(i).css("background","#FFCCCC");
				$("input[name='ids[]']").eq(i).prop("checked", true);
		    }
		}

		function all3()
		{
		    for(var i=0;i<$(".selectedTr").length;++i){
		        $(".selectedTr").eq(i).css("background","#fff");
				$("input[name='ids[]']").eq(i).prop("checked", false);
		    }
		}

		function delall()
		{
			var str='';
			var ids=0;
			var dyids=0;
		    for(var i=0;i<$(".selectedTr").length;++i){
		    	if($("input[name='ids[]']").eq(i).prop("checked")){
			        ids++;
			        str+=$("input[name='ids[]']").eq(i).val()+',';
			        if($("input[name='ids[]']").eq(i).data('dyid')!=0)
			        {
			        	dyids++;
			        }
				}
		    }
		    if(ids==0)
		    {
		    	alert("您未选中任意的虚拟用户!");
		    }
		    else
		    {
		    	if(dyids==0)
		    	{
		    		var a=confirm("您确定删除选中的"+ids+"个虚拟用户吗？")
		    	}
		    	else
		    	{
		    		var a=confirm("您确定删除选中的"+ids+"个虚拟用户吗？其中有"+dyids+"个虚拟用户已经被分配过，确定需要将他们删除吗?")
		    	}
		    	if(a==true){
		    		location.href = "<?php  echo $_W['siteroot'].'web/'.substr($this->createWebUrl('fenpei',array('op'=>'del')),2)?>"+"&str="+str;
		    	}
		    }
		}

		function fenpei()
		{
			var str='';
			var ids=0;
		    for(var i=0;i<$(".selectedTr").length;++i){
		    	if($("input[name='ids[]']").eq(i).prop("checked")){
			        ids++;
			        str+=$("input[name='ids[]']").eq(i).val()+',';
				}
		    }
		    if(ids==0)
		    {
		    	alert("您未选中任意的虚拟用户!");
		    }
		    else
		    {
		    	<?php  if(count($dianyuan)==0) { ?>
		    		alert("您仍未添加有效的工作人员，请先去添加工作人员");
		    		setTimeout(function(){
			            location.href = "<?php  echo $_W['siteroot'].'web/'.substr($this->createWebUrl('dianyuan'),2)?>";
			        }, 0);
		    	<?php  } else { ?>
		    		$("#dianyuan_div").show();
		    	<?php  } ?>
		    }
		}

		function fenpei2()
		{
			var str='';
			var ids=0;
			var dyids=0;
			var dyid=0;
		    for(var i=0;i<$(".selectedTr").length;++i){
		    	if($("input[name='ids[]']").eq(i).prop("checked")){
			        ids++;
			        str+=$("input[name='ids[]']").eq(i).val()+',';
			        if($("input[name='ids[]']").eq(i).data('dyid')!=0)
			        {
			        	dyids++;
			        }
				}
		    }
		    if(ids==0)
		    {
		    	alert("您未选中任意的虚拟用户!");
		    }
		    else
		    {
		    	<?php  if(count($dianyuan)==0) { ?>
		    		alert("您仍未添加有效的工作人员，请先去添加工作人员");
		    		setTimeout(function(){
			            location.href = "<?php  echo $_W['siteroot'].'web/'.substr($this->createWebUrl('dianyuan'),2)?>";
			        }, 0);
		    	<?php  } else { ?>
		    		for(var i=0;i<$(".selectedTr2").length;++i){
				    	if($("input[name='dyids[]']").eq(i).prop("checked")){
					        dyid=$("input[name='dyids[]']").eq(i).val();
						}
				    }
				    if(dyid!=0)
				    {
				    	if(dyids==0)
				    	{
				    		var a=confirm("您确定分配选中的"+ids+"个虚拟用户吗？")
				    	}
				    	else
				    	{
				    		var a=confirm("您确定分配选中的"+ids+"个虚拟用户吗？其中有"+dyids+"个虚拟用户已经被分配过，确定需要将他们再分配吗?")
				    	}
				    	if(a==true){
				    		location.href = "<?php  echo $_W['siteroot'].'web/'.substr($this->createWebUrl('fenpei',array('op'=>'fenpei')),2)?>"+"&str="+str+"&dyid="+dyid;
				    	}
				    }
				    else
				    {
				    	alert("请先选择店员！");
				    }
		    	<?php  } ?>
		    }
		}

		$(function () {
		//点击提交

			$(".selectedTr2").bind('click', function() {
				for(var i=0;i<$(".selectedTr2").length;++i){
			    	$(".selectedTr2").eq(i).css("background","#fff");
					$("input[name='dyids[]']").eq(i).prop("checked", false);
			    }
				var index = $(this).index();
				if($("input[name='dyids[]']").eq(index).prop("checked")){
					$(this).css("background","#fff");
					$("input[name='dyids[]']").eq(index).prop("checked", false);
				}
				else{
					$(this).css("background","#cfc");
					$("input[name='dyids[]']").eq(index).prop("checked", true);
				}
			});

			$(".selectedTr").bind('click', function() {
				var index = $(this).index();
				if($("input[name='ids[]']").eq(index).prop("checked")){
					$(this).css("background","#fff");
					$("input[name='ids[]']").eq(index).prop("checked", false);
				}
				else{
					$(this).css("background","#FFCCCC");
					$("input[name='ids[]']").eq(index).prop("checked", true);
				}
			});


			<?php  if(empty($_GPC['province'])) { ?>
				<?php  $_GPC['province']=11;?>
			<?php  } ?>
		    $("#live_province").empty();
		    <?php  if(empty($_GPC['province'])) { ?>
		        for(var i in area_array){
		            $("#live_province").append('<option value="'+ i+'">'+ area_array[i]+'</option>');
		        }
		    <?php  } else { ?>
		        for(var i in area_array){
		            if(<?php  echo $_GPC['province'];?>==i)
		            {
		                $("#live_province").append('<option value="'+ i+'" selected>'+ area_array[i]+'</option>');
		            }
		            else
		            {
		                $("#live_province").append('<option value="'+ i+'">'+ area_array[i]+'</option>');
		            }
		        }
		    <?php  } ?>
		    
		    $("#live_city").empty();
		    <?php  if(empty($_GPC['city'])) { ?>
		    	var temp2=1;
		        for(var i in sub_array[<?php  echo $_GPC['province'];?>]){
		        	if(temp2==1)
		            {
		                $("#live_city").append('<option value="0">请选择市</option>');
		            }
		            $("#live_city").append('<option value="'+ i+'">'+ sub_array[<?php  echo $_GPC['province'];?>][i]+'</option>');
		        }
		    <?php  } else { ?>
		        for(var i in sub_array[<?php  echo $_GPC['province'];?>]){
		            if(<?php  echo $_GPC['city'];?>==i)
		            {
		                $("#live_city").append('<option value="'+ i+'" selected>'+ sub_array[<?php  echo $_GPC['province'];?>][i]+'</option>');
		            }
		            else
		            {
		                $("#live_city").append('<option value="'+ i+'">'+ sub_array[<?php  echo $_GPC['province'];?>][i]+'</option>');
		            }
		        }
		    <?php  } ?>
			$("#live_province").bind("change",function(){

		        var p=$("#live select").eq(0).val();
		        $("#live_city").empty();
		        var temp=1;
		        for(var i in sub_array[p]){
		            if(temp==1)
		            {
		                $("#live_city").append('<option value="0">请选择市</option>');
		            }
		            $("#live_city").append('<option value="'+ i+'">'+ sub_array[p][i]+'</option>');
		        }
		    });
		});
	</script>
<?php  } ?>

<script>

$(function(){

    $(".check_all").click(function(){

       var checked = $(this).get(0).checked;

       $("input[type=checkbox]").attr("checked",checked);

    });

});

</script>

<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>