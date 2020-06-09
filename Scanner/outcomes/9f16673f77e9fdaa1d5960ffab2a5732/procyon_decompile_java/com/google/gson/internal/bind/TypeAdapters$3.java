// 
// Decompiled by Procyon v0.5.30
// 

package com.google.gson.internal.bind;

import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.TypeAdapter;

final class TypeAdapters$3 extends TypeAdapter
{
    public Boolean read(final JsonReader jsonReader) {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        if (jsonReader.peek() == JsonToken.STRING) {
            return Boolean.parseBoolean(jsonReader.nextString());
        }
        return jsonReader.nextBoolean();
    }
    
    public void write(final JsonWriter jsonWriter, final Boolean b) {
        jsonWriter.value(b);
    }
}
