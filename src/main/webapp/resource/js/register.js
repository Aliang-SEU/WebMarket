$(function () {


    $('form').bootstrapValidator({
        message: '输入的信息无效',
        feedbackIcons:{
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphico-refresh' 
        },
        fields:{
            password: {
                message: '密码验证失败',
                validators: {
                    notEmpty:{
                        message: '密码不能为空'
                    },
                    stringLength:{
                        min: 4,
                        max: 18,
                        message: '密码长度必须在6到18位之间'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_]+$/,
                        message: '用户名只能包含大写、小写和数字'
                    }
                }
            },
            username: {
                message: '用户名验证失败',
                validators: {
                    notEmpty:{
                        message: '姓名不能为空'
                    }
                }
            },
            email:{
                validators: {
                    notEmpty: {
                        message: '邮箱地址不能为空'
                    },
                    emailAddress: {
                        message: '邮箱地址格式有误'
                    }
                }
            }
        }
    })
});