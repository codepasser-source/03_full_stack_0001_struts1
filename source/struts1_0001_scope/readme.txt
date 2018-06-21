要点说明：

     1、struts1基本配置 <form-beans>、<action-mappings>、<message-resources>

     2、form默认的范围为session,可以使用scope属性指定为request范围内,在jsp中显示form信息时，attributeName与form name一致

     3、form bean 需要继承 ActionForm

     4、action需要继承Action，实现execute方法

     5、在action execute中使用ActionMapping指定返回action forward(bound)
