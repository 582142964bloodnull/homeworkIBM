package cn.itcast.domain;

public class Game {
    private int game_id;
    private String  game_name;
    private String  game_plat;
    private String  game_age;
    private String  game_memory;
    private String  game_price;
    private String  game_type;

    public Game() {
    }

    public Game(int game_id, String game_name, String game_plat, String game_age, String game_memory, String game_price, String game_type) {
        this.game_id = game_id;
        this.game_name = game_name;
        this.game_plat = game_plat;
        this.game_age = game_age;
        this.game_memory = game_memory;
        this.game_price = game_price;
        this.game_type = game_type;
    }

    public int getgame_id() {
        return game_id;
    }

    public void setgame_id(int game_id) {
        this.game_id = game_id;
    }

    public String getgame_name() {
        return game_name;
    }

    public void setgame_name(String game_name) {
        this.game_name = game_name;
    }

    public String getgame_plat() {
        return game_plat;
    }

    public void setgame_plat(String game_plat) {
        this.game_plat = game_plat;
    }

    public String getgame_age() {
        return game_age;
    }

    public void setgame_age(String game_age) {
        this.game_age = game_age;
    }

    public String getgame_memory() {
        return game_memory;
    }

    public void setgame_memory(String game_memory) {
        this.game_memory = game_memory;
    }

    public String getgame_price() {
        return game_price;
    }

    public void setgame_price(String game_price) {
        this.game_price = game_price;
    }

    public String getgame_type() {
        return game_type;
    }

    public void setgame_type(String game_type) {
        this.game_type = game_type;
    }
}
