/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function doImportB() {
    var row = $("#names tr");
    row.each(function (index, item) {
        if (index > 0) {
            console.info(item);
            var dd = processArray(item);
            processRow(dd);
            item.remove();
        }
    });
    location.href = "fluidGas/index";
}

function doImportA() {
    var row = $("#names tr");
    row.each(function (index, item) {
        if (index === 1) {
            console.info(item);
            var dd = processArray(item);
            var n = dd.length;
            if (n === 1) {
                //气体名称
                processRow4GasName(dd);
            } else {
                processRow(dd);
            }
            item.remove();
        }
    });
}

function processArray(rowdata) {
    console.info("-------" + rowdata);
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

function processRow4GasName(dd) {
    $.ajax({
        type: 'POST',
        url: 'fluidTools/createGasFactorAndSave',
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

function processRow(dd) {
    $.ajax({
        type: 'POST',
        url: 'fluidTools/createGasFactorAndSave',
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
