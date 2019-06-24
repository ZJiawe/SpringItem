package cn.com.mrzheng.web.redis;

import org.springframework.boot.test.context.TestComponent;
import redis.clients.jedis.Jedis;

public class RedisDemo {
    public static void main(String[] args) {
        String host = "192.168.174.128";
        Jedis jedis = new Jedis(host, 6379);
        jedis.auth("123456");
        System.out.println(jedis.ping());
    }

}
