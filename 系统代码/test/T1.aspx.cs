using System;
using System.Data;

public partial class test_T1 : System.Web.UI.Page
{
    Connect_DB db = new Connect_DB();
    protected void Page_Load(object sender, EventArgs e)
    {
        String snowPage = Request.QueryString["nowPage"];
        int nowPage;

        String sql = "select * from 学生情况";
        String sql2 = "select count(*)  from 学生情况";
        DataTable stuList = db.Query(sql);
        DataTable stuNum = db.Query(sql2);
        
        int isLast = 0;
        int isFont = 0;
        int num = int.Parse(stuNum.Rows[0][0].ToString());
        String stuArray;
      
        if (snowPage != null)//是否第一次加载
        {//后面post刷新
            nowPage = int.Parse(snowPage)-1;//当前页面号减1等于对应的datatable的行记录
            if (nowPage == num-1)
            {
                isLast = 1;
            }
            if (nowPage == 0)
            {
                isFont = 1;
            }
            string index = stuList.Rows[nowPage]["是否住宿"].ToString() == "True" ? "是" : "否";
            stuArray = stuList.Rows[nowPage]["学号"].ToString() + "," + stuList.Rows[nowPage]["姓名"].ToString() + "," + stuList.Rows[nowPage]["性别"].ToString() + "," + stuList.Rows[nowPage]["出生日期"].ToString() + "," + stuList.Rows[nowPage]["生源地"].ToString() + "," + stuList.Rows[nowPage]["政治面貌"].ToString() + "," + index + "," + stuList.Rows[nowPage]["宿舍电话"].ToString() + "," + isLast + "," + isFont;

            Response.Write(stuArray);
            Response.End();
        }
        else
        {//第一次加载
            nowPage = 0;
            TextBox1.Text = stuList.Rows[nowPage]["学号"].ToString();
            TextBox2.Text = stuList.Rows[nowPage]["姓名"].ToString();
            TextBox3.Text = stuList.Rows[nowPage]["性别"].ToString();
            TextBox4.Text = stuList.Rows[nowPage]["出生日期"].ToString();
            TextBox5.Text = stuList.Rows[nowPage]["生源地"].ToString();
            TextBox6.Text = stuList.Rows[nowPage]["政治面貌"].ToString();
            TextBox7.Text = stuList.Rows[nowPage]["是否住宿"].ToString() == "True" ? "是" : "否";
            TextBox8.Text = stuList.Rows[nowPage]["宿舍电话"].ToString();
            pageNum.Value = num.ToString();
        }
    }
}