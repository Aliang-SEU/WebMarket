package cn.aliang.entity;

public enum OrderState {

    CANCEL(-1),
    UNPAY(0),
    TOSEND(1),
    TRANSPORTING(2),
    RECEIVED(3);

    private int state;

    OrderState(int state) {
        this.state = state;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }
}
