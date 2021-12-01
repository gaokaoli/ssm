import com.kk.pojo.Books;
import com.kk.service.BookServiceImp;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import java.util.List;

public class MyTest {
    @Test
    public void test(){

       ApplicationContext context = new ClassPathXmlApplicationContext("application.xml");
        //FileSystemXmlApplicationContext context=new FileSystemXmlApplicationContext("B:\\BaiduNetdiskDownload\\ssmbuild\\ssmbuild\\src\\main\\resources\\application.xml");
        BookServiceImp bookServiceImp = context.getBean("BookServiceImp", BookServiceImp.class);
        List<Books> book=bookServiceImp.queryAllBook();
        for (Books books : book) {
            System.out.println(books);
        }
    }
}
