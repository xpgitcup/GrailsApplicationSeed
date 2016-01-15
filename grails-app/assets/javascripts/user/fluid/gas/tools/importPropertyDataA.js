/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var row;
var propertyIds;

$(function() {
    row = $("#names tr");
    propertyIds = $("#propertyId tr");
    
});

function doImportB() {
    row.each(function (index, item) {
        if (index > 0) {
            console.info(item);
            var dd = processArray(item);
            processRow(dd);
            item.remove();
        }
    });
    location.href = "gasComponentPropertyValue/index";
}

function doImportA() {
    console.info("row = " + row);
    console.info("property = " + propertyIds);
    row.each(function (index, item) {
        if (index === 1) {
            console.info(item);
            var dd = processArray(propertyIds, item);
            processRow(dd);
            item.remove();
        }
    });
}

function processArray(propertyIds, rowdata) {
    console.info("属性行:" + propertyIds);
    var ps = propertyIds.cells;
    console.info("属性:" + ps);
    var m = ps.length;
    var pps = new Array();
    var j;
    for (j = 0; j < m; j++) {
        pps[i] = ps[i].innerText;
    }
    console.info("属性--:" + pps);
    //--------------------------------------------------------------------------
    console.info("行:" + rowdata);
    var data = rowdata.cells;
    console.info("cells:" + data);
    var n = data.length;
    var dd = new Array();
    var i;
    for (i = 0; i < n; i++) {
        dd[i] = data[i].innerText;
    }
    console.info(n + " 数据：" + dd);
    return dd;
}

function processRow(dd) {
    $.ajax({
        type: 'POST',
        url: 'propertyDataTools/createComponentPropertyDataAndSave',
        data: {names: dd},
        success: function (data, textStatus) {
            $("#realTimeDiv").html(data);
        },
        error: function (xhr, textStatus, errorThrown) {
            console.log('创建属性出错了' + xhr);
            console.log('创建属性出错了' + textStatus);
            console.log('创建属性出错了' + errorThrown);
        }
    });
}

