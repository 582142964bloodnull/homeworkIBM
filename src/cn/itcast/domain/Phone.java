package cn.itcast.domain;

public class Phone {
    private int phone_id;
    private String  phone_name;
    private String  phone_log;
    private String  phone_cpu;
    private String  phone_screen;
    private String  phone_price;
    private String  phone_charge;

    public Phone() {
    }

    public Phone(int phone_id, String phone_name, String phone_log, String phone_cpu, String phone_screen, String phone_price, String phone_charge) {
        this.phone_id = phone_id;
        this.phone_name = phone_name;
        this.phone_log = phone_log;
        this.phone_cpu = phone_cpu;
        this.phone_screen = phone_screen;
        this.phone_price = phone_price;
        this.phone_charge = phone_charge;
    }

    public int getPhone_id() {
        return phone_id;
    }

    public void setPhone_id(int phone_id) {
        this.phone_id = phone_id;
    }

    public String getPhone_name() {
        return phone_name;
    }

    public void setPhone_name(String phone_name) {
        this.phone_name = phone_name;
    }

    public String getPhone_log() {
        return phone_log;
    }

    public void setPhone_log(String phone_log) {
        this.phone_log = phone_log;
    }

    public String getPhone_cpu() {
        return phone_cpu;
    }

    public void setPhone_cpu(String phone_cpu) {
        this.phone_cpu = phone_cpu;
    }

    public String getPhone_screen() {
        return phone_screen;
    }

    public void setPhone_screen(String phone_screen) {
        this.phone_screen = phone_screen;
    }

    public String getPhone_price() {
        return phone_price;
    }

    public void setPhone_price(String phone_price) {
        this.phone_price = phone_price;
    }

    public String getPhone_charge() {
        return phone_charge;
    }

    public void setPhone_charge(String phone_charge) {
        this.phone_charge = phone_charge;
    }
}
