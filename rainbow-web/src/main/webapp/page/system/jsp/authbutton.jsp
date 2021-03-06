<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<div class="easyui-layout" data-options="fit : true,border : false">
	<div data-options="region:'north',title:'查询条件',border:false" style="height: 60px;overflow: hidden;" align="center">
			<form id="sys_authbutton_queryForm" >
				<table class="queryForm" style="width: 100%">
					<tr>
						<th style="width: 90px;">按钮名称</th>
						<td><input name="buttonGuid" style="width: 200px;" /></td>
						<th style="width: 90px;">角色代码</th>
						<td><input name="roleCode" style="width: 200px;" /></td>
						<th style="width: 90px;"></th>
						<td><a href="javascript:void(0);" class="easyui-linkbutton"
							data-options="iconCls:'icon-search',plain:true"
							onclick="sys_authbutton_query();">条件过滤</a> <a
							href="javascript:void(0);" class="easyui-linkbutton"
							data-options="iconCls:'icon-clear',plain:true"
							onclick="sys_authbutton_queryClear();">清空条件</a>
						</td>
					</tr>
					
				</table>
			</form>
			
	</div>
	<div data-options="region:'center',border:false">
	<table id="sys_authbutton_datagrid" title="查询结果" class="easyui-datagrid" 
			data-options="url:'${pageContext.request.contextPath}/dispatcherAction/query.do?service=authbuttonService&method=queryByPage',pagination:true,striped:true,idField:'guid',
					pageSize:20,pageList:[20,50,100,150,200],fit:true,remoteSort:false,rownumbers:true,border:false,lines:true,fitColumns:true,autoRowHeight:false,toolbar : '#sys_authbutton_toolbar',
					frozenColumns:[[
				        {field:'guid',width:80,checkbox:true,title:'guid'},
				        {field:'caozuo',width:50,align:'center',sortable:true,formatter:sys_authbutton_caozuo,frozen:true,title:'操作'}
				    ]]">
		<thead>
				<tr>
					<th data-options="field:'buttonGuid',width:200,align:'left',sortable:true,hidden:true"></th>
					<th data-options="field:'buttonName',width:200,align:'left',sortable:true">按钮名称</th>
					<th data-options="field:'buttonCode',width:200,align:'left',sortable:true">按钮代码</th>
					<th data-options="field:'roleCode',width:200,align:'left',sortable:true">角色代码</th>
					<th data-options="field:'createUser',width:100,align:'left',sortable:true">创建人</th>
					<th data-options="field:'createTime',width:100,align:'left',sortable:true">创建时间</th>
					<th data-options="field:'modifyUser',width:100,align:'left',sortable:true">修改人</th>
					<th data-options="field:'modifyTime',width:100,align:'left',sortable:true">修改时间</th>
				</tr>
		</thead>
	</table>
	</div>
</div>

<div id="sys_authbutton_toolbar" style="display: none;">
	<a href="javascript:void(0);" onclick="sys_authbutton_add()" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" style="float: left;">授权</a>
	<div class="datagrid-btn-separator"></div>
	<a href="javascript:void(0);" onclick="sys_authbutton_batchDelete();" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" style="float: left;">批量删除</a>
	<div class="datagrid-btn-separator"></div>
	<a href="javascript:void(0);" onclick="sys_authbutton_reload();" class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" style="float: left;">刷新</a>
	<div class="datagrid-btn-separator"></div>
	<div id="sys_authbutton_mm" style="width:90px" >
		<div data-options="name:'buttonGuid'">按钮名称</div>
		<div data-options="name:'roleCode'">角色代码</div>
	</div>
	<input class="easyui-searchbox" data-options="searcher:sys_authbutton_search,prompt:'请选择搜索条件,输入值后,回车',menu:'#sys_authbutton_mm'" style="width:300px;" />
</div>
<script type="text/javascript" src="./page/system/js/authbutton.js"></script>