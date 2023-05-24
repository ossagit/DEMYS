<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


    <link rel="stylesheet" href="//kendo.cdn.telerik.com/2015.3.930/styles/kendo.common.min.css" />
    <link rel="stylesheet" href="//kendo.cdn.telerik.com/2015.3.930/styles/kendo.metro.min.css" />
    <style>html { font-size: 14px; font-family: Arial, Helvetica, sans-serif; }</style>

    <script src="//kendo.cdn.telerik.com/2015.3.930/js/jquery.min.js"></script>
    <script src="//kendo.cdn.telerik.com/2015.3.930/js/kendo.all.min.js"></script>

    

	<!--  Page styles  -->
<style>
	  .k-gantt-treelist span > strong
      {
        background: pink;
      }
</style>




<%-- <c:set var="unitworkData" value="${unitworkData }" /> --%>
<!--  Page styles  -->

</head>

<body>
		
		
<div id="gantt"></div>
<script>

        var tasksDataSource = new kendo.data.GanttDataSource({
        	batch:false,
            transport: {
                read: {
                    url: "/project/unitwork/load",
                    dataType: "json"
                }
            },
            schema: {
                model: {
                    id: "num",
                    fields: {
                        num: {
                            from: "uw_NUM",
                            type: "int"
                        },
                        title: {
                            from: "uw_NAME",
                            defaultValue: "",
                            type: "string"
                        },
                        start: {
                            from: "uw_STARTDATE",
                            type: "date"
                        },
                        end: {
                            from: "uw_ENDDATE",
                            type: "date"
                        },
                        percentComplete: {
                            from: "uw_PERCENT",
                            type: "number"
                        },
                        summary: {
                            from: "uw_NOTE",
                            type: "string"
                        },
                        member: {
                            from: "member_NUM",
                            type: "int"
                        },
                        pjNum: {
                            from: "pj_NUM",
                            type: "int"
                        }
                    }
                }
            }
        });

        var dependenciesDataSource = new kendo.data.GanttDependencyDataSource({
        	batch:false,
            transport: {
                read: {
                    url: "/project/unitwork/load",
                    dataType: "json"
                }
            },
            schema: {
                model: {
                    num: "num",
                    fields: {
                    	num: {
                            from: "uw_NUM",
                            type: "int"
                        },
                        title: {
                            from: "uw_NAME",
                            defaultValue: "",
                            type: "string"
                        },
                        start: {
                            from: "uw_STARTDATE",
                            type: "date"
                        },
                        end: {
                            from: "uw_ENDDATE",
                            type: "date"
                        },
                        percentComplete: {
                            from: "uw_PERCENT",
                            type: "number"
                        },
                        summary: {
                            from: "uw_NOTE",
                            type: "string"
                        },
                        member: {
                            from: "member_NUM",
                            type: "int"
                        },
                        pjNum: {
                            from: "pj_NUM",
                            type: "int"
                        },
                    }
                }
            }
        });

        $("#gantt").kendoGantt({
            dataSource: tasksDataSource,
            dependencies: dependenciesDataSource,
            views: ["day", "week", "month", { type: "year", selected: true }],
            columns: [
                { field: "num", title: "Num", width: 50 },
                { field: "title", title: "Title", width: 300, editable: true, sortable:true },
                { field: "start", title: "Start Time", format: "{0:MM/dd/yyyy}",  width: 150, editable: true },
                { field: "end", title: "End Time", format: "{0:MM/dd/yyyy}", width: 150, editable: true },
                { field: "percentComplete", title: "Percent", format: "{0:0.##%}",  width: 100,editable: true }
            ],
            showWorkHours: true,
            showWorkDays: true,
            snap:true
        });
   
</script>
</body>
</html>