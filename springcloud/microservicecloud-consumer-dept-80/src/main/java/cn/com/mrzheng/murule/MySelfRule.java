package cn.com.mrzheng.murule;

import com.netflix.loadbalancer.IRule;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

@Component
public class MySelfRule {

    @Bean
    public IRule myRule() {
        return new RandomRule_ZJW();
    }

}
