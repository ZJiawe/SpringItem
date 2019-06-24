package cn.com.mrzheng.web.util;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

public  class RedisUtil {
    private static JedisPool pool;
    static {
        // 1. 连接池配置信息
        JedisPoolConfig jedisPoolConfig = new JedisPoolConfig();
        // 最大连接数
        jedisPoolConfig.setMaxTotal(5);
        // 最大空闲数
        jedisPoolConfig.setMaxIdle(1);
        // 。。。。。。其他配置
        // 2. 连接
        String host = "192.168.174.128";
        int port = 6379;
        pool = new JedisPool(jedisPoolConfig, host, port);
    }

    public static Jedis getResource() {
        Jedis jedis = pool.getResource();
        // 连接远程Redis客户端密码
        jedis.auth("123456");
        return jedis;
    }

    public static void colse (Jedis jedis) {
        jedis.close();
    }
}
