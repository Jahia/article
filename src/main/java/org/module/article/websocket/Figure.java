package org.module.article.websocket;
import org.json.JSONObject;

public class Figure {
    private JSONObject json;

    public Figure(JSONObject json) {
        this.json = json;
    }

    @Override
    public String toString() {
        return json.toString();
    }
}
