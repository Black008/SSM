package cn.com.zhirun.ssm0514.model;

public class Pages {
    int totalPage;
    int nowPage;
    int ShowPages;
    int num;

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public int getShowPages() {
        return ShowPages;
    }

    public void setShowPages(int showPages) {
        ShowPages = showPages;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getNowPage() {
        return nowPage;
    }

    public void setNowPage(int nowPage) {
        this.nowPage = nowPage;
    }
}
