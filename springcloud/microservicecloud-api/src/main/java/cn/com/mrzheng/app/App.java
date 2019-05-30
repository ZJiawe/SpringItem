package cn.com.mrzheng.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * Hello world!
 *
 */
//@EnableAutoConfiguration    //测试日志关闭，打包开启
//@MapperScan(basePackages = "cn.com.mrzheng.web.mapper")
@ComponentScan( basePackages = "cn.com.mrzheng")
 @SpringBootApplication    // 测试日志开启
public class App
{
    public static void main( String[] args )
    {
        SpringApplication.run(App.class, args);
    }
}
