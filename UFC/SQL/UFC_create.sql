-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2017-11-15 03:53:16.852

-- tables
-- Table: code_basic
CREATE TABLE code_basic (
    code_seq int  NOT NULL IDENTITY(1),
    code_desc int  NOT NULL,
    CONSTRAINT code_basic_pk PRIMARY KEY  (code_seq)
);

-- Table: code_dtl
CREATE TABLE code_dtl (
    code_seq int  NOT NULL,
    code_dtl_seq int  NOT NULL IDENTITY(1),
    code_dtl_desc int  NOT NULL,
    CONSTRAINT code_dtl_pk PRIMARY KEY  (code_dtl_seq)
);

-- Table: customer
CREATE TABLE customer (
    cs_seq int  NOT NULL IDENTITY(1),
    cs_name nvarchar(50)  NOT NULL,
    cs_desc nvarchar(500)  NULL,
    cs_tel nvarchar(15)  NULL,
    cs_addr nvarchar(200)  NULL,
    cs_mail nvarchar(50)  NULL,
    CONSTRAINT customer_pk PRIMARY KEY  (cs_seq)
);

-- Table: flower_basic
CREATE TABLE flower_basic (
    flo_seq int  NOT NULL IDENTITY(1),
    flo_name nvarchar(50)  NOT NULL,
    flo_desc nvarchar(500)  NOT NULL,
    CONSTRAINT flower_basic_pk PRIMARY KEY  (flo_seq)
);

-- Table: order_basic
CREATE TABLE order_basic (
    order_seq int  NOT NULL IDENTITY(1),
    cs_seq int  NOT NULL,
    send_address int  NOT NULL,
    send_time int  NOT NULL,
    send_sender int  NOT NULL,
    send_msg int  NULL,
    send_remark int  NULL,
    pay_status int  NOT NULL,
    pay_total int  NOT NULL,
    pay_discount int  NULL,
    CONSTRAINT order_basic_pk PRIMARY KEY  (order_seq)
);

-- Table: order_dtl
CREATE TABLE order_dtl (
    order_seq int  NOT NULL,
    order_dtl_seq int  NOT NULL IDENTITY(1),
    cs_seq int  NOT NULL,
    flo_seq int  NOT NULL,
    flo_count int  NOT NULL,
    flo_remark nvarchar(50)  NULL,
    flo_unitprice int  NOT NULL,
    CONSTRAINT order_dtl_pk PRIMARY KEY  (order_seq,order_dtl_seq,cs_seq,flo_seq)
);

-- Table: provider_basic
CREATE TABLE provider_basic (
    prv_seq int  NOT NULL,
    prv_name int  NOT NULL,
    prv_addr int  NOT NULL,
    prv_tel int  NOT NULL,
    CONSTRAINT provider_basic_pk PRIMARY KEY  (prv_seq)
);

-- End of file.

