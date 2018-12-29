package io.pivotal.syanagihara.functions;

import java.time.OffsetDateTime;
import java.util.function.Function;

public class Hello implements Function<String, String> {

    @Override
    public String apply(String s) {
        System.out.println("Hello " + s + " at " + OffsetDateTime.now());
        return "Hello " + s + " at " + OffsetDateTime.now();
    }
}
