package cn.aliang.Util;

public enum State {

    SUCCESS(true),
    FAIL(false);

    private boolean state;

    State(boolean state) {
        this.state = state;
    }
}
