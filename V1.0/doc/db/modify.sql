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
PRIMARY KEY (id) )
ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;;

--20141010���ӳ����
drop table  workshop ;
CREATE TABLE workshop
( 
    id INT(11) NOT NULL AUTO_INCREMENT COMMENT '����ID',
    name varchar(100)  COMMENT '��������', 
    managerid int(11) COMMENT '��������ID',
    managername varchar(255) COMMENT '������������', 
    tel varchar(100) COMMENT '����绰', 
    qq varchar(100) COMMENT '����qq', 
    valid varchar(100) COMMENT '������Ч��־λ', 
    remark varchar(100) COMMENT '���䱸ע',
    PRIMARY KEY  (id)
)ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--20141010�������������
drop table  productionTask ;
CREATE TABLE productionTask
( 
    id INT(11) NOT NULL AUTO_INCREMENT COMMENT '����ID',
    orderfromid int(11) NOT NULL, 
    workshopid int(11) not null,
    status   char(1) ,--��������״̬
    addTime DATETIME,  --����ʱ��
    endTime DATETIME,  --���ʱ��
    operateuserid   varchar(50),    --����Ա
    operateusername   varchar(50),
    comcode varchar(50),
    valid varchar(100) ,  -- '����������Ч��־λ', 
    remark varchar(100) , -- '��������ע',
    PRIMARY KEY  (id)
)ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;