$(function () {

    /*
        动态验证用户名和邮箱地址
     */

    $("#registerButton").on("click", function () {
        var data = $("#registerForm").serialize();
        $.post("/webmarket/register", data, function (response) {
            //验证成功
            if (response != null && response.success == true) {
                alert(response.message);
                window.location.href = "/webmarket/toLogin";
            } else {

            }
        });
    });

    $('form').bootstrapValidator({
        message: '输入的信息无效',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphico-refresh'
        },
        fields: {
            password: {
                message: '密码验证失败',
                validators: {
                    notEmpty: {
                        message: '密码不能为空'
                    },
                    stringLength: {
                        min: 4,
                        max: 18,
                        message: '密码长度必须在4到18位之间'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_]+$/,
                        message: '密码只能包含大写、小写和数字'
                    },
                    identical: {
                        field: 'verifyPassword',
                        message: '两次输入的密码不相符'
                    }
                }
            },
            verifyPassword: {
                validators: {
                    identical: {
                        field: 'password',
                        message: '两次输入的密码不相符'
                    }
                }
            },
            username: {
                message: '用户名验证失败',
                validators: {
                    notEmpty: {
                        message: '姓名不能为空'
                    },
                    stringLength: {
                        min: 3,
                        max: 18,
                        message: '用户名长度必须在3到18位之间'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_]+$/,
                        message: '用户名只能包含大写、小写和数字'
                    },
                    remote: {
                        message: '该用户名已被注册',
                        url: '/checkUsername',
                        data: {"username": $("#username")}, //这里默认会传递该验证字段的值到后端
                        type: 'GET',
                        delay: 500 //这里特别要说明，必须要加此属性，否则用户输入一个字就会访问后台一次，会消耗大量的系统资源，
                    }
                }
            },
            email: {
                validators: {
                    notEmpty: {
                        message: '邮箱地址不能为空'
                    },
                    emailAddress: {
                        message: '邮箱地址格式有误'
                    },
                    remote: {
                        message: '该邮箱已被注册',
                        url: '/checkEmail',
                        data: {"email": $("#email")}, //这里默认会传递该验证字段的值到后端
                        type: 'GET',
                        delay: 500 //这里特别要说明，必须要加此属性，否则用户输入一个字就会访问后台一次，会消耗大量的系统资源，
                    }
                }
            }
        }
    })
});