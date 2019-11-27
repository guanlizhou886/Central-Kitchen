$(function () {
    $('#menupid').click(function()
    {
        layer.open({
            type: 2,
            title: '选择物资种类',
            shadeClose: true,
            shade: 0.8,
            area: ['65%', '65%'],
            content: root+'/material/queryrelation.do'
        });
    });
    $('#menusupply').click(function()
    {
        layer.open({
            type: 2,
            title: '选择所属供应商',
            shadeClose: true,
            shade: 0.8,
            area: ['65%', '65%'],
            content:root+'/supply/www.do'
        });
    });
});