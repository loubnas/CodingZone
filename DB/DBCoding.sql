PGDMP                          z           DBCoding    14.1    14.1 E    8           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            9           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            :           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ;           1262    24884    DBCoding    DATABASE     g   CREATE DATABASE "DBCoding" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_Morocco.1252';
    DROP DATABASE "DBCoding";
                postgres    false            ?            1259    24885    question    TABLE     (  CREATE TABLE public.question (
    content character varying NOT NULL,
    reponse1 character varying,
    reponse2 character varying,
    reponse3 character varying,
    reponse4 character varying,
    duration bigint,
    score bigint,
    trueanswer bigint,
    id_question bigint NOT NULL
);
    DROP TABLE public.question;
       public         heap    postgres    false            ?            1259    24890    question_idqst_seq    SEQUENCE     {   CREATE SEQUENCE public.question_idqst_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.question_idqst_seq;
       public          postgres    false    209            <           0    0    question_idqst_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.question_idqst_seq OWNED BY public.question.id_question;
          public          postgres    false    210            ?            1259    24891    staff    TABLE     ?   CREATE TABLE public.staff (
    id_staff bigint NOT NULL,
    firstname_staff character varying(10) NOT NULL,
    lastname_staff character varying(10) NOT NULL,
    email character varying(20) NOT NULL,
    password character varying(20) NOT NULL
);
    DROP TABLE public.staff;
       public         heap    postgres    false            ?            1259    24894    staff_id_staff_seq    SEQUENCE     {   CREATE SEQUENCE public.staff_id_staff_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.staff_id_staff_seq;
       public          postgres    false    211            =           0    0    staff_id_staff_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.staff_id_staff_seq OWNED BY public.staff.id_staff;
          public          postgres    false    212            ?            1259    24895    student    TABLE     ?   CREATE TABLE public.student (
    id_student bigint NOT NULL,
    firstname_student character varying(10) NOT NULL,
    lastname_student character varying(10) NOT NULL,
    email character varying(30) NOT NULL
);
    DROP TABLE public.student;
       public         heap    postgres    false            ?            1259    24898    student _id_student _seq    SEQUENCE     ?   CREATE SEQUENCE public."student _id_student _seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."student _id_student _seq";
       public          postgres    false    213            >           0    0    student _id_student _seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."student _id_student _seq" OWNED BY public.student.id_student;
          public          postgres    false    214            ?            1259    24899    test    TABLE     ?   CREATE TABLE public.test (
    id_test bigint NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL,
    id_staff bigint
);
    DROP TABLE public.test;
       public         heap    postgres    false            ?            1259    24964    testStudentAnswer    TABLE     ?   CREATE TABLE public."testStudentAnswer" (
    id bigint NOT NULL,
    id_student bigint NOT NULL,
    id_test bigint NOT NULL,
    id_question bigint NOT NULL,
    answer bigint NOT NULL
);
 '   DROP TABLE public."testStudentAnswer";
       public         heap    postgres    false            ?            1259    24963    testStudentAnswer_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."testStudentAnswer_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."testStudentAnswer_id_seq";
       public          postgres    false    224            ?           0    0    testStudentAnswer_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."testStudentAnswer_id_seq" OWNED BY public."testStudentAnswer".id;
          public          postgres    false    223            ?            1259    24908    test_id_test_seq    SEQUENCE     y   CREATE SEQUENCE public.test_id_test_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.test_id_test_seq;
       public          postgres    false    215            @           0    0    test_id_test_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.test_id_test_seq OWNED BY public.test.id_test;
          public          postgres    false    216            ?            1259    24909    test_question    TABLE     ?   CREATE TABLE public.test_question (
    id_testquestion bigint NOT NULL,
    id_test bigint NOT NULL,
    id_question bigint NOT NULL
);
 !   DROP TABLE public.test_question;
       public         heap    postgres    false            ?            1259    24912    test_question_id_question_seq    SEQUENCE     ?   CREATE SEQUENCE public.test_question_id_question_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.test_question_id_question_seq;
       public          postgres    false    217            A           0    0    test_question_id_question_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.test_question_id_question_seq OWNED BY public.test_question.id_question;
          public          postgres    false    218            ?            1259    24913    test_question_id_test_seq    SEQUENCE     ?   CREATE SEQUENCE public.test_question_id_test_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.test_question_id_test_seq;
       public          postgres    false    217            B           0    0    test_question_id_test_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.test_question_id_test_seq OWNED BY public.test_question.id_test;
          public          postgres    false    219            ?            1259    24914 !   test_question_id_testquestion_seq    SEQUENCE     ?   CREATE SEQUENCE public.test_question_id_testquestion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.test_question_id_testquestion_seq;
       public          postgres    false    217            C           0    0 !   test_question_id_testquestion_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.test_question_id_testquestion_seq OWNED BY public.test_question.id_testquestion;
          public          postgres    false    220            ?            1259    24915    test_student    TABLE     ?   CREATE TABLE public.test_student (
    "id_testStudent" bigint NOT NULL,
    id_test bigint NOT NULL,
    id_student bigint NOT NULL,
    date date,
    code character varying(10) NOT NULL,
    date_limite date
);
     DROP TABLE public.test_student;
       public         heap    postgres    false            ?            1259    24918    test_student_id_testStudent_seq    SEQUENCE     ?   CREATE SEQUENCE public."test_student_id_testStudent_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."test_student_id_testStudent_seq";
       public          postgres    false    221            D           0    0    test_student_id_testStudent_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."test_student_id_testStudent_seq" OWNED BY public.test_student."id_testStudent";
          public          postgres    false    222            |           2604    24919    question id_question    DEFAULT     v   ALTER TABLE ONLY public.question ALTER COLUMN id_question SET DEFAULT nextval('public.question_idqst_seq'::regclass);
 C   ALTER TABLE public.question ALTER COLUMN id_question DROP DEFAULT;
       public          postgres    false    210    209            }           2604    24920    staff id_staff    DEFAULT     p   ALTER TABLE ONLY public.staff ALTER COLUMN id_staff SET DEFAULT nextval('public.staff_id_staff_seq'::regclass);
 =   ALTER TABLE public.staff ALTER COLUMN id_staff DROP DEFAULT;
       public          postgres    false    212    211            ~           2604    24921    student id_student    DEFAULT     |   ALTER TABLE ONLY public.student ALTER COLUMN id_student SET DEFAULT nextval('public."student _id_student _seq"'::regclass);
 A   ALTER TABLE public.student ALTER COLUMN id_student DROP DEFAULT;
       public          postgres    false    214    213                       2604    24922    test id_test    DEFAULT     l   ALTER TABLE ONLY public.test ALTER COLUMN id_test SET DEFAULT nextval('public.test_id_test_seq'::regclass);
 ;   ALTER TABLE public.test ALTER COLUMN id_test DROP DEFAULT;
       public          postgres    false    216    215            ?           2604    24967    testStudentAnswer id    DEFAULT     ?   ALTER TABLE ONLY public."testStudentAnswer" ALTER COLUMN id SET DEFAULT nextval('public."testStudentAnswer_id_seq"'::regclass);
 E   ALTER TABLE public."testStudentAnswer" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            ?           2604    24924    test_question id_testquestion    DEFAULT     ?   ALTER TABLE ONLY public.test_question ALTER COLUMN id_testquestion SET DEFAULT nextval('public.test_question_id_testquestion_seq'::regclass);
 L   ALTER TABLE public.test_question ALTER COLUMN id_testquestion DROP DEFAULT;
       public          postgres    false    220    217            ?           2604    24925    test_question id_test    DEFAULT     ~   ALTER TABLE ONLY public.test_question ALTER COLUMN id_test SET DEFAULT nextval('public.test_question_id_test_seq'::regclass);
 D   ALTER TABLE public.test_question ALTER COLUMN id_test DROP DEFAULT;
       public          postgres    false    219    217            ?           2604    24926    test_question id_question    DEFAULT     ?   ALTER TABLE ONLY public.test_question ALTER COLUMN id_question SET DEFAULT nextval('public.test_question_id_question_seq'::regclass);
 H   ALTER TABLE public.test_question ALTER COLUMN id_question DROP DEFAULT;
       public          postgres    false    218    217            ?           2604    24927    test_student id_testStudent    DEFAULT     ?   ALTER TABLE ONLY public.test_student ALTER COLUMN "id_testStudent" SET DEFAULT nextval('public."test_student_id_testStudent_seq"'::regclass);
 L   ALTER TABLE public.test_student ALTER COLUMN "id_testStudent" DROP DEFAULT;
       public          postgres    false    222    221            &          0    24885    question 
   TABLE DATA           }   COPY public.question (content, reponse1, reponse2, reponse3, reponse4, duration, score, trueanswer, id_question) FROM stdin;
    public          postgres    false    209   3Q       (          0    24891    staff 
   TABLE DATA           [   COPY public.staff (id_staff, firstname_staff, lastname_staff, email, password) FROM stdin;
    public          postgres    false    211   HR       *          0    24895    student 
   TABLE DATA           Y   COPY public.student (id_student, firstname_student, lastname_student, email) FROM stdin;
    public          postgres    false    213   ?R       ,          0    24899    test 
   TABLE DATA           D   COPY public.test (id_test, name, description, id_staff) FROM stdin;
    public          postgres    false    215   
S       5          0    24964    testStudentAnswer 
   TABLE DATA           [   COPY public."testStudentAnswer" (id, id_student, id_test, id_question, answer) FROM stdin;
    public          postgres    false    224   oS       .          0    24909    test_question 
   TABLE DATA           N   COPY public.test_question (id_testquestion, id_test, id_question) FROM stdin;
    public          postgres    false    217   BT       2          0    24915    test_student 
   TABLE DATA           f   COPY public.test_student ("id_testStudent", id_test, id_student, date, code, date_limite) FROM stdin;
    public          postgres    false    221   ?T       E           0    0    question_idqst_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.question_idqst_seq', 19, true);
          public          postgres    false    210            F           0    0    staff_id_staff_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.staff_id_staff_seq', 2, true);
          public          postgres    false    212            G           0    0    student _id_student _seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."student _id_student _seq"', 4, true);
          public          postgres    false    214            H           0    0    testStudentAnswer_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."testStudentAnswer_id_seq"', 63, true);
          public          postgres    false    223            I           0    0    test_id_test_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.test_id_test_seq', 18, true);
          public          postgres    false    216            J           0    0    test_question_id_question_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.test_question_id_question_seq', 1, false);
          public          postgres    false    218            K           0    0    test_question_id_test_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.test_question_id_test_seq', 1, false);
          public          postgres    false    219            L           0    0 !   test_question_id_testquestion_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.test_question_id_testquestion_seq', 55, true);
          public          postgres    false    220            M           0    0    test_student_id_testStudent_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."test_student_id_testStudent_seq"', 16, true);
          public          postgres    false    222            ?           2606    24929    question question _pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.question
    ADD CONSTRAINT "question _pkey" PRIMARY KEY (id_question);
 C   ALTER TABLE ONLY public.question DROP CONSTRAINT "question _pkey";
       public            postgres    false    209            ?           2606    24931    staff staff_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_pkey PRIMARY KEY (id_staff);
 :   ALTER TABLE ONLY public.staff DROP CONSTRAINT staff_pkey;
       public            postgres    false    211            ?           2606    24933    student student _pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.student
    ADD CONSTRAINT "student _pkey" PRIMARY KEY (id_student);
 A   ALTER TABLE ONLY public.student DROP CONSTRAINT "student _pkey";
       public            postgres    false    213            ?           2606    24986 (   testStudentAnswer testStudentAnswer_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."testStudentAnswer"
    ADD CONSTRAINT "testStudentAnswer_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."testStudentAnswer" DROP CONSTRAINT "testStudentAnswer_pkey";
       public            postgres    false    224            ?           2606    24937    test test_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (id_test);
 8   ALTER TABLE ONLY public.test DROP CONSTRAINT test_pkey;
       public            postgres    false    215            ?           2606    24939     test_question test_question_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.test_question
    ADD CONSTRAINT test_question_pkey PRIMARY KEY (id_testquestion);
 J   ALTER TABLE ONLY public.test_question DROP CONSTRAINT test_question_pkey;
       public            postgres    false    217            ?           2606    24941    test_student test_student_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.test_student
    ADD CONSTRAINT test_student_pkey PRIMARY KEY ("id_testStudent");
 H   ALTER TABLE ONLY public.test_student DROP CONSTRAINT test_student_pkey;
       public            postgres    false    221            ?           1259    24942    fki_id_staff    INDEX     A   CREATE INDEX fki_id_staff ON public.test USING btree (id_staff);
     DROP INDEX public.fki_id_staff;
       public            postgres    false    215            ?           2606    24975    testStudentAnswer id_question    FK CONSTRAINT     ?   ALTER TABLE ONLY public."testStudentAnswer"
    ADD CONSTRAINT id_question FOREIGN KEY (id_question) REFERENCES public.question(id_question) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public."testStudentAnswer" DROP CONSTRAINT id_question;
       public          postgres    false    209    224    3206            ?           2606    24943    test id_staff    FK CONSTRAINT     }   ALTER TABLE ONLY public.test
    ADD CONSTRAINT id_staff FOREIGN KEY (id_staff) REFERENCES public.staff(id_staff) NOT VALID;
 7   ALTER TABLE ONLY public.test DROP CONSTRAINT id_staff;
       public          postgres    false    215    3208    211            ?           2606    24948    test_student id_student    FK CONSTRAINT     ?   ALTER TABLE ONLY public.test_student
    ADD CONSTRAINT id_student FOREIGN KEY (id_student) REFERENCES public.student(id_student);
 A   ALTER TABLE ONLY public.test_student DROP CONSTRAINT id_student;
       public          postgres    false    221    3210    213            ?           2606    24980    testStudentAnswer id_student    FK CONSTRAINT     ?   ALTER TABLE ONLY public."testStudentAnswer"
    ADD CONSTRAINT id_student FOREIGN KEY (id_student) REFERENCES public.student(id_student) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public."testStudentAnswer" DROP CONSTRAINT id_student;
       public          postgres    false    213    3210    224            ?           2606    24953    test_student id_test    FK CONSTRAINT     w   ALTER TABLE ONLY public.test_student
    ADD CONSTRAINT id_test FOREIGN KEY (id_test) REFERENCES public.test(id_test);
 >   ALTER TABLE ONLY public.test_student DROP CONSTRAINT id_test;
       public          postgres    false    221    215    3213            ?           2606    24958    test_question id_test    FK CONSTRAINT     ?   ALTER TABLE ONLY public.test_question
    ADD CONSTRAINT id_test FOREIGN KEY (id_test) REFERENCES public.test(id_test) ON UPDATE CASCADE ON DELETE CASCADE;
 ?   ALTER TABLE ONLY public.test_question DROP CONSTRAINT id_test;
       public          postgres    false    3213    217    215            ?           2606    24970    testStudentAnswer id_test    FK CONSTRAINT     ?   ALTER TABLE ONLY public."testStudentAnswer"
    ADD CONSTRAINT id_test FOREIGN KEY (id_test) REFERENCES public.test(id_test) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY public."testStudentAnswer" DROP CONSTRAINT id_test;
       public          postgres    false    224    3213    215            &     x?UP?n?0<??bo??-???J/??ĵ?ن???)?_;??ȗ????????^wx"?w(?П6g<??'PX????'h???*???o??,?S???<	?F+G?I???s`zn?+??:????-aC?݆ƅ?N+?f??~?L?~???5D?????????")	???ꙇ=?`?o;?L ??-??2n?????y??VSY~Oe]U?D]?2?Ux?zT2w?!?&??Α7qOG7?&L??Ȫ?xn??&??q?-?Y0????o      (   ,   x?3?LL???C&?s3s???s!|.#???Ĵ4?W? P?[      *   v   x?3???/M?K?,?/-.΄? CSK????????\.#??䌢?4ΌĢ?ܪD(?37GRj̙??4"/?35'????ЃI!?7???u?st????????IU? ?J<d      ,   U   x?34?I-.Q?J,K??
?K??s2SR?rR???sRKR???l?2C.Cs??bb??tX@T:楗?$??Ґ+F??? 2
9
      5   ?   x?U?K?C!D?1?KZ??K??????.??J<x??b
??1o??ucg?~g??'Xp?G?ڊ???&?F?f?f???(?????4??D??ą??oX?2i??'??????????;`???Cfx?x?g'&?-<?p??`?Μ3??K?U?f?Pr8
?G?o?O? P(?}???9k?      .   E   x????@?w\"`'w?????????H?2,????\?2??FC?QP?p=??ט??<26?????      2   u   x?e???0??a??0??,qt?9?kOU?H????B???9?E*?M?C~?/??a?s)ej?@%?	o	m.?d??o2F?????g??T^.?)??R??(:??V??}??t|??l?.?     