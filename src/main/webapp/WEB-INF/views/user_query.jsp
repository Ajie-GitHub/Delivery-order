<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div style="padding:10px 10px 10px 10px">
	<form id="content" method="post">
	    <table cellpadding="5">
	        <tr>
	            <td>帐号:</td>
	            <td><input class="easyui-textbox" type="text" id="account" name="account" data-options="required:false" style="width: 280px;"></input></td>
	        </tr>
	        
	        <tr>
	            <td>用户名:</td>
	            <td><input class="easyui-textbox" id="userName" name="userName" data-options="validType:'length[0,150]',required:false" style="width: 280px;"></input></td>
	        </tr>
	        
	        
	        
	    </table>
	</form>
	<div style="padding:5px">
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">查询</a>
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重置</a>
	</div>
</div>
<script type="text/javascript">
	function submitForm(){
		if(!$('#content').form('validate')){
			$.messager.alert('提示','表单还未填写完成!');
			return ;
		}
		var queryParams ={'account':encodeURI($('#account').val()),'userName':encodeURI($('#userName').val())};
		console.log(queryParams);
		$("#userList").datagrid('reload',queryParams);
		$('#window').window('close');		
				clearForm();		
	}
	function clearForm(){
		$('#content').form('reset');
	}
</script>