// 
// Decompiled by Procyon v0.5.30
// 

package com.google.gson;

import java.util.Set;
import java.util.Iterator;
import java.util.Map;
import com.google.gson.internal.LinkedTreeMap;

public final class JsonObject extends JsonElement
{
    private final LinkedTreeMap members;
    
    public JsonObject() {
        this.members = new LinkedTreeMap();
    }
    
    private JsonElement createJsonElement(final Object o) {
        JsonElement instance;
        if (o == null) {
            instance = JsonNull.INSTANCE;
        }
        else {
            instance = new JsonPrimitive(o);
        }
        return instance;
    }
    
    public void add(final String s, JsonElement instance) {
        if (instance == null) {
            instance = JsonNull.INSTANCE;
        }
        this.members.put(s, instance);
    }
    
    public void addProperty(final String s, final Boolean b) {
        this.add(s, this.createJsonElement(b));
    }
    
    public void addProperty(final String s, final Character c) {
        this.add(s, this.createJsonElement(c));
    }
    
    public void addProperty(final String s, final Number n) {
        this.add(s, this.createJsonElement(n));
    }
    
    public void addProperty(final String s, final String s2) {
        this.add(s, this.createJsonElement(s2));
    }
    
    JsonObject deepCopy() {
        final JsonObject jsonObject = new JsonObject();
        for (final Map.Entry<String, V> entry : this.members.entrySet()) {
            jsonObject.add(entry.getKey(), ((JsonElement)entry.getValue()).deepCopy());
        }
        return jsonObject;
    }
    
    public Set entrySet() {
        return this.members.entrySet();
    }
    
    public boolean equals(final Object o) {
        return o == this || (o instanceof JsonObject && ((JsonObject)o).members.equals(this.members));
    }
    
    public JsonElement get(final String s) {
        return (JsonElement)this.members.get(s);
    }
    
    public JsonArray getAsJsonArray(final String s) {
        return (JsonArray)this.members.get(s);
    }
    
    public JsonObject getAsJsonObject(final String s) {
        return (JsonObject)this.members.get(s);
    }
    
    public JsonPrimitive getAsJsonPrimitive(final String s) {
        return (JsonPrimitive)this.members.get(s);
    }
    
    public boolean has(final String s) {
        return this.members.containsKey(s);
    }
    
    public int hashCode() {
        return this.members.hashCode();
    }
    
    public JsonElement remove(final String s) {
        return (JsonElement)this.members.remove(s);
    }
    
    public int size() {
        return this.members.size();
    }
}
