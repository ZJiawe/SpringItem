package cn.com.mrzheng.web;

import cn.com.mrzheng.web.entity.User;
import cn.com.mrzheng.web.util.RedisUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;
import redis.clients.jedis.Transaction;

import java.util.HashMap;
import java.util.Map;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DeptProvider_redis_8004 {

	/**
	 *  测试Redis 操作
	 *
	 */

	@Test
	public void contextLoads() {
		String host = "192.168.174.128";
		Jedis jedis = new Jedis(host, 6379);
		jedis.auth("123456");
		jedis.set("strName", "字符串名称");
		System.out.println(jedis.get("strName"));
		jedis.close();
	}

	/**
	 * redis连接池
	 *
	*/
	@Test
	public void connetPool(){
		Jedis jedis = RedisUtil.getResource();
		jedis.auth("123456");
		System.out.println(jedis.ping());
	}

	/**
	 *  模拟真实使用，如果redis里面没有缓存数据
	 *  从mySQl中获取，若是有redis缓存数据就从redis缓存数据中获取
	 */

	@Test
	public void getUser() {
		String key = "User:1";
		Jedis jedis = RedisUtil.getResource();

		if (jedis.exists(key)) {
			Map<String, String> hash = jedis.hgetAll(key);
			User u = new User();
			u.setUserName(hash.get("name")).setAge(Integer.parseInt(hash.get("age"))).setAdress("adress");
			System.out.println("从Redis中获取数据：" + u.toString());
		} else {
			// 模拟从mysql获取数据
			Map<String, String> map = new HashMap<>();
			map.put("name", "zhangSan");
			map.put("age", "14");
			map.put("adress", "地址");
			jedis.hmset(key, map);
			System.out.println("从MySQl获取数据存放到Redis + " + map.toString());
		}
		RedisUtil.colse(jedis);
	}

	@Test
	public void transaction(){
		Jedis jedis = RedisUtil.getResource();
		Transaction transaction = jedis.multi();
		transaction.set("k1", "v1");
		transaction.set("k2", "v2");
		transaction.set("k3", "v3");
		// transaction.exec(); 执行
		// transaction.discard(); 中断事物
	}
}
