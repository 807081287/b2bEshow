--20140921�޸�Product��
alter table Product add  material varchar(50);
alter table Product add  origin varchar(50);
alter table Product add   size varchar(50);
alter table Product add   comcode  char(8) after userid ;
alter table Product add   imgpath  varchar(100) after img ;
alter table Product add   price  double after img ;

--20140927���Ӷ�����orderform
--drop table orderform
CREATE TABLE orderform (
id INT(11) NOT NULL AUTO_INCREMENT,
ordersize     varchar(50),
orderquality  double, --��������
orderamount   double, --�����۸�
realamount    double, --ʵ�ʼ۸�
customercode  varchar(20), --�ͻ�����
customername  varchar(100), --�ͻ�����
customertel   varchar(50),
customeraddress  varchar(200),
addTime DATETIME,  --����ʱ��
status  char(2),   --����״̬
userId INT(11),    --����������
comcode char(8),    --��Ӧ�̴���
productid   INT(11),
productname VARCHAR(100),
productcontent VARCHAR(21845),
productimg VARCHAR(100),
sequence INT(11),
productCategoryId INT(11),
PRIMARY KEY (id) );

--20141010���ӳ����
--drop table  workshop ;
CREATE TABLE workshop
( 
    id INT(11) NOT NULL AUTO_INCREMENT COMMENT '����ID',
    workshopname varchar(100)  COMMENT '��������', 
    workshopmanagerid varchar(100)  COMMENT '��������ID',
    workshopmanagername varchar(100) COMMENT '������������', 
    workshoptel varchar(100) COMMENT '����绰', 
    valid varchar(100) COMMENT '������Ч��־λ', 
    remark varchar(100) COMMENT '���䱸ע',
    PRIMARY KEY  (id)
)
  
