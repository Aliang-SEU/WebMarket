package cn.aliang.Util;

/**
 * 返回的状态码
 */
public enum State {

    //成功
    SUCCESS(true),
    //失败
    FAIL(false);

    private boolean state;

    State(boolean state) {
        this.state = state;
    }
}
