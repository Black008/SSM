package cn.com.zhirun.ssm0514.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class MyAspect {

    @Pointcut("execution(* cn.com.zhirun.ssm0514.service..*(..))")
    public void myPointCut(){
        System.out.println("myPointCut");
    }
    @Before("myPointCut()")
    public void doAccessCheck(){
        System.out.println("doAccessCheck");

    }
    @AfterReturning("myPointCut()")
    public void doAfter(){
        System.out.println("doAfter");
    }
    @After("myPointCut()")
    public void after(){
        System.out.println("after");
    }
    @AfterThrowing("myPointCut()")
    public void doAfterThrowing(){
        System.out.println("doAfterThrowing");
    }
    @Around("myPointCut()")
    public Object doBasicProfiling(ProceedingJoinPoint pjp) throws Throwable{
        System.out.println("进入环绕通知");
        Object object = pjp.proceed();//执行改方法
        System.out.println("退出方法");
        return object;
    }
}
