package cn.aliang.Util;

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
