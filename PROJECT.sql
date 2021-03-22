PGDMP         8            
    x            Project    13.0    13.0 .    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    33051    Project    DATABASE     f   CREATE DATABASE "Project" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Project";
                postgres    false            �            1259    33102 
   attendance    TABLE     �   CREATE TABLE public.attendance (
    attendance_id numeric(20,0) NOT NULL,
    attendance_num integer NOT NULL,
    subject_id numeric(20,0) NOT NULL,
    student_id numeric(20,0) NOT NULL
);
    DROP TABLE public.attendance;
       public         heap    postgres    false            �            1259    33057    dean    TABLE     w  CREATE TABLE public.dean (
    dean_id numeric(20,0) NOT NULL,
    dean_name character varying(36) NOT NULL,
    dean_surname character varying(36) NOT NULL,
    dean_gender character varying(10) NOT NULL,
    dean_salary integer NOT NULL,
    university_id numeric(20,0),
    deputy_dean character varying(36),
    tel numeric(11,0),
    dean_email character varying(36)
);
    DROP TABLE public.dean;
       public         heap    postgres    false            �            1259    33082    major    TABLE     r   CREATE TABLE public.major (
    major_id numeric(20,0) NOT NULL,
    major_name character varying(36) NOT NULL
);
    DROP TABLE public.major;
       public         heap    postgres    false            �            1259    33067    rector    TABLE     k  CREATE TABLE public.rector (
    rector_id numeric(20,0) NOT NULL,
    rector_name character varying(36) NOT NULL,
    rector_surname character varying(36) NOT NULL,
    rectot_gender character varying(10) NOT NULL,
    rector_salary integer NOT NULL,
    dean_id numeric(20,0) NOT NULL,
    university_id numeric(20,0),
    rector_email character varying(36)
);
    DROP TABLE public.rector;
       public         heap    postgres    false            �            1259    33128    report    TABLE     �   CREATE TABLE public.report (
    report_id numeric(20,0) NOT NULL,
    report_name character varying(50) NOT NULL,
    r_description character varying(250) NOT NULL,
    teacher_id numeric(20,0),
    student_id numeric(20,0)
);
    DROP TABLE public.report;
       public         heap    postgres    false            �            1259    33092    student    TABLE     u  CREATE TABLE public.student (
    student_id numeric(20,0) NOT NULL,
    student_name character varying(36) NOT NULL,
    student_surname character varying(36) NOT NULL,
    student_gender character varying(10) NOT NULL,
    student_year integer NOT NULL,
    student_gpa double precision NOT NULL,
    major_id numeric(20,0) NOT NULL,
    s_email character varying(50)
);
    DROP TABLE public.student;
       public         heap    postgres    false            �            1259    33087    subject    TABLE     x   CREATE TABLE public.subject (
    subject_id numeric(20,0) NOT NULL,
    subject_name character varying(36) NOT NULL
);
    DROP TABLE public.subject;
       public         heap    postgres    false            �            1259    33118    teacher    TABLE     N  CREATE TABLE public.teacher (
    teacher_id numeric(20,0) NOT NULL,
    teacher_name character varying(36) NOT NULL,
    teacher_surname character varying(36) NOT NULL,
    teacher_gender character varying(10) NOT NULL,
    teacher_salary integer NOT NULL,
    subject_id numeric(20,0) NOT NULL,
    t_email character varying(36)
);
    DROP TABLE public.teacher;
       public         heap    postgres    false            �            1259    33052 
   university    TABLE     �   CREATE TABLE public.university (
    university_id numeric(20,0) NOT NULL,
    university_name character varying(36) NOT NULL,
    university_start_date date NOT NULL
);
    DROP TABLE public.university;
       public         heap    postgres    false            �            1259    33143    warn    TABLE        CREATE TABLE public.warn (
    warn_id numeric(20,0) NOT NULL,
    warn_description text NOT NULL,
    warn_start_date date NOT NULL,
    warn_end_date date NOT NULL,
    teacher_id numeric(20,0),
    student_id numeric(20,0),
    dean_id numeric(20,0)
);
    DROP TABLE public.warn;
       public         heap    postgres    false            �          0    33102 
   attendance 
   TABLE DATA           [   COPY public.attendance (attendance_id, attendance_num, subject_id, student_id) FROM stdin;
    public          postgres    false    206   ;       �          0    33057    dean 
   TABLE DATA           �   COPY public.dean (dean_id, dean_name, dean_surname, dean_gender, dean_salary, university_id, deputy_dean, tel, dean_email) FROM stdin;
    public          postgres    false    201   @       �          0    33082    major 
   TABLE DATA           5   COPY public.major (major_id, major_name) FROM stdin;
    public          postgres    false    203   �@       �          0    33067    rector 
   TABLE DATA           �   COPY public.rector (rector_id, rector_name, rector_surname, rectot_gender, rector_salary, dean_id, university_id, rector_email) FROM stdin;
    public          postgres    false    202   GA       �          0    33128    report 
   TABLE DATA           _   COPY public.report (report_id, report_name, r_description, teacher_id, student_id) FROM stdin;
    public          postgres    false    208   �A       �          0    33092    student 
   TABLE DATA           �   COPY public.student (student_id, student_name, student_surname, student_gender, student_year, student_gpa, major_id, s_email) FROM stdin;
    public          postgres    false    205   -N       �          0    33087    subject 
   TABLE DATA           ;   COPY public.subject (subject_id, subject_name) FROM stdin;
    public          postgres    false    204   m       �          0    33118    teacher 
   TABLE DATA           �   COPY public.teacher (teacher_id, teacher_name, teacher_surname, teacher_gender, teacher_salary, subject_id, t_email) FROM stdin;
    public          postgres    false    207   �m       �          0    33052 
   university 
   TABLE DATA           [   COPY public.university (university_id, university_name, university_start_date) FROM stdin;
    public          postgres    false    200   �t       �          0    33143    warn 
   TABLE DATA           z   COPY public.warn (warn_id, warn_description, warn_start_date, warn_end_date, teacher_id, student_id, dean_id) FROM stdin;
    public          postgres    false    209   �t       R           2606    33106    attendance attendance_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.attendance
    ADD CONSTRAINT attendance_pkey PRIMARY KEY (attendance_id);
 D   ALTER TABLE ONLY public.attendance DROP CONSTRAINT attendance_pkey;
       public            postgres    false    206            H           2606    33061    dean dean_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.dean
    ADD CONSTRAINT dean_pkey PRIMARY KEY (dean_id);
 8   ALTER TABLE ONLY public.dean DROP CONSTRAINT dean_pkey;
       public            postgres    false    201            L           2606    33086    major major_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.major
    ADD CONSTRAINT major_pkey PRIMARY KEY (major_id);
 :   ALTER TABLE ONLY public.major DROP CONSTRAINT major_pkey;
       public            postgres    false    203            J           2606    33071    rector rector_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.rector
    ADD CONSTRAINT rector_pkey PRIMARY KEY (rector_id);
 <   ALTER TABLE ONLY public.rector DROP CONSTRAINT rector_pkey;
       public            postgres    false    202            V           2606    33132    report report_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.report
    ADD CONSTRAINT report_pkey PRIMARY KEY (report_id);
 <   ALTER TABLE ONLY public.report DROP CONSTRAINT report_pkey;
       public            postgres    false    208            P           2606    33096    student student_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (student_id);
 >   ALTER TABLE ONLY public.student DROP CONSTRAINT student_pkey;
       public            postgres    false    205            N           2606    33091    subject subject_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.subject
    ADD CONSTRAINT subject_pkey PRIMARY KEY (subject_id);
 >   ALTER TABLE ONLY public.subject DROP CONSTRAINT subject_pkey;
       public            postgres    false    204            T           2606    33122    teacher teacher_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.teacher
    ADD CONSTRAINT teacher_pkey PRIMARY KEY (teacher_id);
 >   ALTER TABLE ONLY public.teacher DROP CONSTRAINT teacher_pkey;
       public            postgres    false    207            F           2606    33056    university university_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.university
    ADD CONSTRAINT university_pkey PRIMARY KEY (university_id);
 D   ALTER TABLE ONLY public.university DROP CONSTRAINT university_pkey;
       public            postgres    false    200            X           2606    33150    warn warn_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.warn
    ADD CONSTRAINT warn_pkey PRIMARY KEY (warn_id);
 8   ALTER TABLE ONLY public.warn DROP CONSTRAINT warn_pkey;
       public            postgres    false    209            ^           2606    33112 %   attendance attendance_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.attendance
    ADD CONSTRAINT attendance_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(student_id);
 O   ALTER TABLE ONLY public.attendance DROP CONSTRAINT attendance_student_id_fkey;
       public          postgres    false    2896    205    206            ]           2606    33107 %   attendance attendance_subject_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.attendance
    ADD CONSTRAINT attendance_subject_id_fkey FOREIGN KEY (subject_id) REFERENCES public.subject(subject_id);
 O   ALTER TABLE ONLY public.attendance DROP CONSTRAINT attendance_subject_id_fkey;
       public          postgres    false    206    2894    204            Y           2606    33062    dean dean_university_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dean
    ADD CONSTRAINT dean_university_id_fkey FOREIGN KEY (university_id) REFERENCES public.university(university_id);
 F   ALTER TABLE ONLY public.dean DROP CONSTRAINT dean_university_id_fkey;
       public          postgres    false    2886    201    200            Z           2606    33072    rector rector_dean_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.rector
    ADD CONSTRAINT rector_dean_id_fkey FOREIGN KEY (dean_id) REFERENCES public.dean(dean_id);
 D   ALTER TABLE ONLY public.rector DROP CONSTRAINT rector_dean_id_fkey;
       public          postgres    false    2888    202    201            [           2606    33077     rector rector_university_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rector
    ADD CONSTRAINT rector_university_id_fkey FOREIGN KEY (university_id) REFERENCES public.university(university_id);
 J   ALTER TABLE ONLY public.rector DROP CONSTRAINT rector_university_id_fkey;
       public          postgres    false    202    200    2886            a           2606    33138    report report_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.report
    ADD CONSTRAINT report_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(student_id);
 G   ALTER TABLE ONLY public.report DROP CONSTRAINT report_student_id_fkey;
       public          postgres    false    205    208    2896            `           2606    33133    report report_teacher_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.report
    ADD CONSTRAINT report_teacher_id_fkey FOREIGN KEY (teacher_id) REFERENCES public.teacher(teacher_id);
 G   ALTER TABLE ONLY public.report DROP CONSTRAINT report_teacher_id_fkey;
       public          postgres    false    208    207    2900            \           2606    33097    student student_major_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.major(major_id);
 G   ALTER TABLE ONLY public.student DROP CONSTRAINT student_major_id_fkey;
       public          postgres    false    2892    205    203            _           2606    33123    teacher teacher_subject_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.teacher
    ADD CONSTRAINT teacher_subject_id_fkey FOREIGN KEY (subject_id) REFERENCES public.subject(subject_id);
 I   ALTER TABLE ONLY public.teacher DROP CONSTRAINT teacher_subject_id_fkey;
       public          postgres    false    204    2894    207            d           2606    33161    warn warn_dean_id_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY public.warn
    ADD CONSTRAINT warn_dean_id_fkey FOREIGN KEY (dean_id) REFERENCES public.dean(dean_id);
 @   ALTER TABLE ONLY public.warn DROP CONSTRAINT warn_dean_id_fkey;
       public          postgres    false    201    2888    209            c           2606    33156    warn warn_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.warn
    ADD CONSTRAINT warn_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(student_id);
 C   ALTER TABLE ONLY public.warn DROP CONSTRAINT warn_student_id_fkey;
       public          postgres    false    209    2896    205            b           2606    33151    warn warn_teacher_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.warn
    ADD CONSTRAINT warn_teacher_id_fkey FOREIGN KEY (teacher_id) REFERENCES public.teacher(teacher_id);
 C   ALTER TABLE ONLY public.warn DROP CONSTRAINT warn_teacher_id_fkey;
       public          postgres    false    209    207    2900            �   �  x�UW[�-+���]���������Bw��<	��3�S�|Z���՞Ya�a(a�z?�zaX�����	�g6X건�������,���8�y-,�������/��y��2�ѿ[��e>���Yq����\qk�Z�3��3Yy�IӴ�u��h��u9"`��V�Ҟuʈ`>��eB���֌X�	hBV"V�gF��ѣ�>�����@�dX�����"�(W,_a���ž���^xf
V��3f�4�G���*YWD�h��H�ѭ��z�(���Y����#T#�%��S#�͜�ѣlOK��5�B:U� �""����}p�߫���,8ض�M@9M�E�C�(���e  ݳ�ʋp2��^�\���ԟ�>���ʺ&���
�Z��k�˂+ɰE��+_,h�W�K�N}t�2Tڦ&��&saV�n�1�#F��a-��g��N-�$��#<$��E�lxI�n�$�U&0�8᛹��^��4-f1�A�L߇���o��'1@C��ʂc�Agf%�h �H��<a��ʙ�.�]���hCI�C����&�uwHՇ��J�N5E!��-�-�Q���l�v��x�㩓�C�%���E�&>��H6Li����>��L��.��c�ݩ����]ى�dZj[y���-�1r������<�)�����16e/>Z&��Ȗ�(�����G��7ǂg+��Gε�2�����|F��]�����3���P�ѪfA��ۮ��k��T��[X|���b鈵>�(�^�O���.b*C��h�-2��_�M�^;�ӂdȆ�~ �'<p��U���#��C����B16�5etn�xs�r�)_s�sx�<�ֺ<�L���R����k��H�]����^���SO?�H?�I��~�cҒ�"��ʽ�8�V���m9����.��S����؉��z$���o�SM��I#�ȸ���֓�Ekq�xe_�~�Ȅ�OD���jG���<Ȼ�/���pX����tI^����r�x�&�zY ��oR�M�y��=�Z�2�D���AH�cX#e��N��xο�]/W^S�#���ש~=W%��Ͳ�`�^;����Z�M�~�x�������AX���ր�gbz7"����q���驇Ǭ�3�h�y$:���4��{�X��R���A�Z�CQ>X�4�3���ح���y��˱�1ܯ�������'m�*ʖ��{��!m�9�W�`y=���r?�u�k����W���+:�����"^��N/*B�����C��C�������f�m      �   h   x�M�1
�0 �����b[G�_��h�uh����I�������t�Ê�%ʹC������a�~Ul�}��eͱ,x����":΢�[MZ)� #�      �   �   x���n�0���y�M-lc;B�H���.&�`)q����Cz��$r�u=)�W�l'�$�L�uٳb��T�`�[��Q��h������I}��n��L�W<Qf�M��LWF;��K
�3��wp`oGT����Rx��0S �b��n�o��(ŕ�8�E�I��O�K{�\ͬ��{7�<tG      �   S   x�=�1
�0 �9��!�+�
q	���6������7�0���w����rj1hZ����������7}��Z��/B�)y      �   s  x��Z�rG}��b~�["��ˣ�d7�d�]ە�M�9Ӥ:�3F���A�3�E%*[�)�ӍГ��kS���v�d
wp]��}bK�'��quҺn������}Rڼ��G��n;�C��>�*����:9����>ٖ�.\O�~��*��O}�T�7�~����>�lu�m�}�e�,����0����lY�����.)����9��$��ڶIj�QN�.mC�-���*K����K���~S���az,?��������saG=.\p�8O�����p��ņW_����t��������ˣ�M�G:��&��ʛ�7���9<����甭y���*����[w ��Խ�����>ZW9�r��4m�r`�i��0rI��{������v�f[�ؔC����;��oC�7�9x���	V�V��lE_a���;ȉx��-[; 5��%�Gw�mk�Ad���͖5k�w��m)>�:���{�upN[���@�j��"4K="`��[WS/�]�;���9`����	k>�����!0�V��P���?��w k��z:4L�I�mK��H)=w�BєM+.�zE{S�F#�5e�r�N�� 2������iF" %�n*�j��/9m�d����6�5^���ֶ6�pR��xR9�̡i��ii&9?C�#ʷMY����z��ho�c8���y�lq��WSG㔕�:3�OM�VM�u����}`���M׼7�A�c1��Y":0>�XXˣ&ŊO$�~1ʾu�1�=������S�f	2����C����#��&[�!���
Ӫ)��@���z�
���J8�v��5���q�F�����0���X\����*!~c�1Y�=���.o�h��|�H]�?�-=�e9tep����2��D@����I�Cyz���b�^@n���3��V���a��-N��S�+�#"T0z3N|A�u�26�'�2 ��K��jfp�P��ғ0
��Tf_�&�2�`ش���3��)�w�?-�},���;�L�*�jL{��b,���GZ}ͯ�{SA��z�ǋN=��h. ���GS��	���=w<^=p�Bz���Yw8���݄
T�0��9's���'Ѽ��Z>����e���'ȀVA�Sz�m�zO��6.R���wu�%��v���fjF��g�(�ݾ7wA�y@#��O�I���c���&�!H�6�/��K�3���'�q�@�9�E�1��ˑ�/�!�c�˷?�rG�j&gO�	��a��H����$��pƴ�����Q���TI�I#7��p�?����+Z�FHڨ'έ*B��������`�f|��U��4�"���.e�R��?C��0ܑ��i}�&��F!r����>��q̮�B��I0�|�eP������"��::��1v��Z���"[itc������.��ӊ�Vr��Ai4�D^{�#�R�#�hsR��� $H��ÓS�B`K��l@�)S�D-ŉ`U��:�#�!�}��r���V�$F�X�	O�$�4��c�W_7w�Q6�AVz�6�$�A8��X����&�u�B`<�,쿯�d���{Ă.�e@��D]3F�%��Pӕ�O(�_da(�`�tMoL��4#�=
��U�!K;��A��ݵ[B9!�}���K��d�;VI�ev�-�闦���ԙ�)D
Z�h��X�度�J�@镶)�E���4ek���$x�ti�Jw4�!��KٜM��K���K��:V��e:���8CR$� 4����z���0mE���L]L-��X/�	=��0����DW^hr�%�S�a�AF�/��/k��j���L�I���M�V�bϙ�}�ґK��U�Y}J"i��lEI�����=d�!��(N�Ǚ8 ��4���c�L5M�8�L�p��[9#S��#��"��U5{<�a�պ��ĵ�'L1e��a�לh��2�DJ�8/��#��/�5����̛k�
*z��P̃�)R��V�9���^p����z+H쟛{8q�o)�>�Q��˽��E(ߨ��J�~�g�u{����h�t2�@��2�)������I՟5���.[B������2H4ʤd2'���F����B1[�ۦ6�����ꋉj2�xb�+� ��Mt�'��@�)��~&_���;۪�:�D$�\f68�r�I,�����&U�B� ���
��p�u����~�U䑐�o�|�f�.ov������$Mgl��S4��I�rA7�;gz���w)K�?�!�Ѥ�V�A.Ȍ�'e��5���a~�ڳ\�c�#Pg�v�.E:_�֖�XjDƇ�4�ǉL;���|�W�y1J�4���9�q26�^ǌre$%�7��J�wP�%Ⳉ�)Hdpy�B�K`$m諦y_�{z�Ƅϣxvaܦ��/U��goV��1Τ={�M����f�E�K�L��R�h��@�� W����[��D�=�}���UJ�Yg��E��=�H��"��9����=��N���T�|�,\�D������+JWA���2��+��Ku�0GRp�����a(+� �U��x)�9����eٻZ�M����'�t�E+��Ն�z���Bq�,�wb��6�V"_�?�����Q��wFz�?�p=�����-��{�l����ֽxZ�7g��tzt�+��Ô��囵���Jx�2w�:�aͷ^H�/��񼒩E����O�0���8�EbsA�=��WJq����]3�ok�w�sΟ���-�J���%�oȰ'��$o�cU������w����	��Nu�e'L�|�O�5�(^}sG���<~�E�4��ӛI���$8\�#�]ϰ�,�}�(�������}��R"/��i�%xs��4�I𧥇n/�,�}�i�i͋��:�*6����/6��A�I��$�t����sohk�F����=�G��l!��>��H벾��_Iy�3��z��_KL��?Tս*P��&w�=BC�~���|c�`/���}���7Jsq���gc�K{/��X�*�,���i�K�aJ>��n������������>��ˌ!���v|����0R�����ج��� ��K�0�eNYӻon����7���w7?�$߽���	L.�H�_�vuu�?��      �      x�}\I��6�]�E�z����$��)v�r��r����HB$�hR�~�;I��"��Hw8���A����u�,*ձ/�R�c�]ȼ���%��b�K�?��g��Q��:�ԙ��j��c�O3b�%�R�����c^M�{�^vڰ����s�]@�|���21��:�s<�]&�
ɾ�FVYo��3��졛AO�LU:�f�d�}x�3ߙ�خO���=S){�8��Ζ9�\UZ�?�B��xhLwl8Z�+ġ�G��w��SC�N��}2�J7y��/�����T�v���L�����������陹��ޓts�KS;'f���^�����=pZ Ά�!^)^t�h3(g�#��IT��*ws�ny�x�i��=�g#^����V��MϫU7��ʜ�G����Yn3v���>ժIU�;�����C_Ê${7bw���i_86t�"�v��y���+]����~�hL6���u�TD
�ʻ��DcoJ�t��n0ͲB���X��P"�u��=�
j��j���>��g(��Uߪ�7?�N6��;t�g�p�e�S��<��������	Ek�*�5��d�X�A��c�zc��ΛV,�&H�c�,W��4ބ=�S�z�湲��A�Z��fq��U�k��˲1F��O�x�H�H�x�6v+���:s�E�sH�X�N�W#Z����`<�g��Y���,���|�e}1^#RS��y���N��gy���{�/"L0E��`�3¾����'"��L�`�:�t3?�	�aǽB&f\���{��Jf.1�̀�	�d6�/�ٿ�0`#ߔ������z�,'�;��ҙ걦j6����t�W��׵Y�z�Vy��Y$Rg��~b���c+��&7��x���E&s�}�u��F�ٗ3ܷf�e�Ң47�ZϠ��]��g?#�P$���~k�.��	��"o�9���!ݼ��G
��;����=ѫFjv�8d+��ced��-�Oە�v�sQ�2'f_�L�F =���6� ���ZWv�M��i$��x�c���h�t��I�Z�k���b��
�~�j������X�������c74���)�m��i���;16:U�y�w�=Ȧ���/�LXe�	�{�w����>{�5��;��,K�t+�8g.E[��=�B�36�}�� ^\��OE���'X'b��Ԙ��)������%3�sp3�;�۱�d���}Q�N���ǚ�a� N��.k������0%�sr�����9< ���?5�0���{������7�Mvi�c/G����n���� �H<0��(u��P�e?�I���0p,ۼ�{8��yLtZ��g���	�H:	������!Q����a�޼]!d�x-��;�3"Q��/��ƍ�*�T�ں��;yK 7BU���w�F�ذ��A���K�~d�[QK$��f�=\S#l˴ݬ�~5��d��Ó�X�%�zX�ө����m�|n�pp黶��r����K��5����Ɏ��zܪP����,�����y}F�|_;�XA���>f�t�l�r��XN ?"S�Zg"h�.�D{�J�CU]ENڦ	�'Qï�1��y������|˿'�,��gQ���L����##��,���/�X0}v�8l��ֆx�/��*3�U�B (�8?���L�]�=vv�=r3���8�}�c!��a��P�c=��|�+C|�x���iF�>�a�Jk9rr���<������q߿������j��zo�`��	󃉐��SxH��7�;�-��W�=�51�g��u&�E�P��D,���[����79ֽG��q?p�d�&h�[U"}��tju�%�ѭ��ر�ev�}>g�a�A��7�)�� Ѵ����w3����#;�cuf�Mѹ�F�D���"�^��f����:EZRB��:�`���٧S9I�{��P�b�tf���r��v�'"A�X��Au�s?Ȋ}���F#�v�E�T4�Xu���7}3�Ь�ԭ�S7~&��4��\������
���`��c`�T�0� �s�5���x��2�F]i�3)-W~��1���}�Q�d(*u���ޙ̲��;p�eH�2��m͛��E|�M�Uu��{R�[GJ�=,�&o,9Z�/�#������']eg��J��ܮ�V�8M�_	p�����R�����$t���U	UѰQel�K&��$�R��g�t:/.��e�0�i��f�쏆�x�^��R��	�-I�H���W�����a��A�n�$n��jA�?�����}hJ����i��f9������iwO�$��Aa(�d^juEHw�A�b4[��/�����M�ԕ�@��x�R�I��:ās<�%�J����h�{֬�¡��?�T�>6`!;@�1g !)�L�&����/����v�ݺ�A����T��D���l�ܛ~�=�`p������yA�QC�����YS���c�����p��i�G���"/��E�T������d��)�~8�M�n�->��E�@���LW��)X��ރ���;k���M��	B�f��GR��g
ӵ�6R��e��`��6v�Z���`T��\�س����8cA,Nd��[_�g���vs(�TTj�o�Bd�`��uPm�X& ar�M�UwaF1K7@Ƒ Q� F�;8�3o��n�~Ȇ�aA�]|^��xNrt�Tk	ɟ׾-' �D��Z��=�&�#�"���8�ܥ< ��Ё�d��#����U��}�o�F���&]l�Q�*����&�K��W���8�O�9�;,�go@�̅����>I��(�fs9�u�#I�K���eW,��d�-
���1
h��{��Gpś��<���I�H�"�u<R�_���dF��'�%���.��E�d���_U�1���Cv��xP���x����i��.�Ŭ3�	
ZqVW�=�<y�,��r�zé�H�C����|׹�r�%į
���Le��d}f��
:7{����;���
��/Wq<��/�{�c�J��_sَ�>�1┩K	��\�MP��@P��J��d�4�p�ds��E?!C��������u��^d�P�H:�ka��߳�sF��G��vÖ7�ݾwX���u}��-6�v���� �Ba"z()���؛Q�K��w�|V��Y�dMt��0�����J��n,��	៤�>��s���He�CEQ1��a;Ц�4�SũG��6R�D��=��E�|!�-��h�i�m�Ru�8�`X��^��~��tt���o5'y޾��ҁLNX�E���{wÚd��=�\�$.m!�����t�������z�z�4Bp���OE�g,U���P��h�	kq"nr|��Q��j�ə}S������Ѱ�ة#���=b"N�Ĉ꼾�ۖ:��᏿�_��4YDm>�+�X��p�Y�+;���@��A��q�[]象' �Eo~�Ɲqp�ޖȕ��/ ��^��Cm���ꄖ{ܖB3��_u7nMs����"�Q# څ֬A�>qm�����1[�s'(�!Y/������<_3���2�F�E��1�Y���Ė�_9fZ-h4���z~��.����#�#�.�DG���N�.$p�El9�j�W6�3(�AG�B�����<�_M�?7�hK��>�cO�â1�1]V	�A���mA%^9ҫ�	��E%m [L�i�3�*.��� P�&(�.c0���4�}����PЭ�AY�O�(�g��/<�)&�lю��ľ�+�.`.+�"����%Y�����O'fDO
�nWk��O�I1t��d�ʬ8��n�C��ဘ�����ݽ�$j�B]��@�e+� ̺[���rDb���5��Bޝ�;�0�޴�lsZO�w�95�>!�̰ZU^ɵ��N�:��(�Q-'8��I�����f�e�~2��	!顓e���|JPX�ՙBĪ��wB��x-Xb��ç����}�(�ގ��ȲR>B�~ϒ-K�#O�@�әYE����llu����K3A�Vqpd��j��x���M �  |�X�MГ ]|�(�t~�a�Ŀѥ�u>��� ��d����=��Mzy����{¼^d�c�}p�7ɋ�~M�^a����R��b:K�R��c�M�z�8{P��ƿ)FE��r���P�����ŀæ<G����?�nO5�\�z~�!�_Zh��E�)r�E�G��M�K�,(�����ù��FmƋ0��oUL�=rk�T�@������fø]	�k�8O�z�E���w84UB�NY�b�i�0�]v0��	�>�
���H�d�r�xq�5����ǆ���X��N�Du��j�ء������؂[���}<���0o.V5`�)�!YW����PZ�w���6�ԛ�>Jj.J?^o���$2� �,A�����d+�/�9�/��ö���.��=>��33p�&�|���Ejgr����~"��ʾ*���H��Qk�(�6R�����X�"Q���N�n��c��`�o��ڵ�[U��.}�BР	�Hƞ��?)�v�1��dC!׊���=������{�{����g�`5l��U��"�Y�T�T��g��a^TΜ�U�C*��6��V��ğ�t}e�>S`u��x܈��}7�y*/Z�ӆ�Z�t���v���?$�Zc�L�m���xl���]��m��̓)Y����,��g�&��vՍ�$���u׿��В����0,m�KQ)��;Oel�c�a��I�d�:�|�FG�uc+�y]� $1��J-����`�;�|�������Cy�-g�:�Dh[��v���}@����?�C�J�Q�v�e��MB"sG���Id��5 ��V�c�t�w/�e����w(؟*Æ�%��8A�w����tAZS�e��F�͡�l�C<.:��y5�ٛ��?�ٶ�JOC�d:�^ ��ZUn��~�M�_A:d?�縭i'�/z���*�"��}�eώ��� /}yn�������c��9�e4��"�/���X���c? Tm�c\C]�p��>^��� O�u1 :����f�suB�u�&S�����" H�J6�5��&�d=eC����T{r3cA-eϖ(��$u��36��$!R���ϕj-.F{���L�� �Ulk����.d��*�ލ�D�}��Ժ�%��=ȋV	u4�7�^ �b�g������g@M�W�@�yT�����ύ�<# E�$��DLLX=�؅�
=k�b���g�	��8�7�>�)"X��Z�E��`W�,3�'��a���EJԼ,���A`v<x���x�>d�1�(��z�*u���~��3����Sf����hA��(S����Y$xiљƨ&ߨo烔µ�$�ߴ��=�4!��eb�0Y��x��b�e��C-;�_����}�m��sŵ.& ���$hG�����ML����{����aa,H,m"���[l�I��nc��\|�' �Q�j���Ucz�σݮ��\��r��v<����z{� �+���g�+ �ˮ�"4Caz},��;�������W�(2�xx��l�@����B���l��k�8���8��F s��l����g���a%��N����Әj{��<8fM1��X����{���ڶ��Y�]��n 0�	[D���{��B3���FPQW_���E��*������V��H��i!z�*�t��ˑ���ʱ��GW>�[�D��e��� ,A�[�`K>k�	�j6�(���}S#(&���7"zSO��N�,t%���4d�ܾɾ�)C�,��+�3��̵ǥ�ҹ,����ocӨ��]�3mf0�JK�m%�Z���>Pg�%�vѵsr��']��H���B�8a]d��BV:��\�1u���&m*$�%�t�����
��]���1��m؝z�B:Me	źU���5%3RƆO���^S�Ղvo�P�����6ЋjD�
�O�}�kp{v<M�Qd��81g��[cF:��!�+� ���	�r+����@^�,;C����O������P��O��/<_��sj��u!��0�5��G*_�Ր=�4��.E�蓪$���m9ps+��%��	j0���}#���%B���"{:�Xl�����$��6e�(Vڳ_��}V7)*f�ғ��-���7�~�D���-+dU7A�N�z�K�9�x&�Ω�Ytp�|�b{
K�[SD�Sk����ɜ��[�ֱ��X���@��=���JK���>w$�'W�+
�K��=a�;+Q�F�d��t�e�������X]��%�����09�;h�(��I��!s�����p�u9��o�Z��wEg��?��7���\�����fۥ���A��-È��Ee��B�d�;{������d����h���H��ۘ��=�ʞÜ�o�Z��֜�'����t�t���l����iM7��u�� ��K�I��z��:�Ew���"���wb3;`<�^��@��,��[p�QR�]|}��C)<��\�Z��.H�T�Ks��F<i*�oޘ5lEⳆ�����;MAvX�؈��כ���Qx��;\NƗ"[�����M���/�����]��'\q�`�t}�$js����/Ǯ�8�u�A:% �_=��q��dj��}Q����E�����Ck@�7���o&�K����%O���:A>��U�Y�����wG�t(�P7ߡEL�o~a�7r��
��[�����|O|������䠮�Kg��<!����u������o�6[��se�w|�E!�B?l�+AFAr;��	�6Xbz�+w���ir��}O�Ѯ�b��Vf���Yw�"�Tǽ�J��Vq�8P���[#�m�鮟l6g�NX��1Ũʤr�6QL����?wcZlI�|��0�c�T(�t�}�]�H@�����n��d��J������~yP����J�x���C?�/tS�Af����t<�����AoN�!s��A����Ylh�N@�"Β��@�~7u�m-�:X^Q�C���z�w{���1��敃�����O]�G��7eWϏ���i$���q�E�ڧ;�mt��'���EW��׮�����cy��*�4@��%����U'���+
�=*���!�
�νdf�(�����q�U��v��G�u���	ő�.�(������T�(�jR��Սg~��]TNݧ��D��g�/r?���ny���z ��-�_K�|Ot��j�N�����c������ܷNʖC� �/W��Cjǣ���}�]9���Ȇu����D�G�C}���h�׺^b��APt����oP�ͪT�Lb3�bQ�M_.YEM�_68����heGLd�������H���i�g�=|,�������tm9��������h/�T�t)̧i��������t��7�Wz 3��2�;��MX��Hz؉;�����7�;]�V;�ڋ�.�"���*��79]�Ri+f�aA�[��,�_~�v��q���
ٯԾ��"ѽ8��\��۱�����ݚAe��v�21�����{{�Ϝ�:ej���ڳ����: �
l�=��b�p�$M�����٩pH��M�\�5��_
ԻI�.�ٹ�N��zyL���f�3�,�̡���!��I�|G�|��}��u;|TX�}��D�Ҷ��c&�'�Yȶw����iⰨ�vp�7T�xk��F�-�g2�����^7�ckT�m@2+��a0�.L���6pT^�*���2{��K��3ݫE���58�^��W��������      �   t   x��;�@��ܯ�� �k>�ک��K�ņ��Cȿ78}�-t�˚�!"\�ݸ�@�k�٢��4�=Y?�0EyU�"�b� =}��������ϲ���	�>��o#�$E�c��H"      �     x�UWMw�8<C�b����C���$��ټxv3;o/ 	��@@�b�_?��<�
j������&�v��<�Ў<s%H��d�^."HY�L��n٘a����֓���^
���t�(J�4�k��;q9y���Z�g3Ֆ��1���*C䖴C�3v����nQ����'��p�
ۘ�p��V%�
����`G�	w֙;�N,�v�!�Bkq&/�=k��-�޺�L���ܒŭ���A��]-B�%i���a�XћщegN��< )�G��Xw+1����K���AK?Z?IW�qRs�_n�\�A�������=��*6ɃD+y$�R�M(uFm���pUnb�"���
1�:5���N*	Z�	Y�KԖf1�v�C��Iػ ��Vڑ<� ��������2o�Ѵ)� ��sI5#��T���[��F�,��P���o���m����9�{���wP0��6dg��1��G��,��E]��A35�i������F�� ��RY��b��N�ٱ7��![��*�}	_ſ^F��D�t�⨄,�;�-���+�'oza!�c�r�j�t�����4w<��� 	G�st=W�(ͣ�^Ǆ��IH���ՎP��(��c�\��b\]L1gt��e+�k%'?y��o2�FF�)ᚍ:J#�>zv�5��xvdM[�:����/�?P����e�yCf<��"O
�=�,��&TlWɁڄ;��C	5׊|�)��P�p�k��y퇄z6:xV;�AF��Q-'/rxo@[�kC��y�����)tM�[隐7HW���۠���c���Yvj��仐���.�?N��Dc4f�%�e�W�$��u����ʲ�!o�3dc�3�9�$�U����Ì]�̪�d'���h͑/Ÿ�`�Rt�܏MU)���Q����wOt�^�К��-�C�I0$�C���1v�ͣ�~���脷�KZ ������o5nc�M3?����|�Wq]}�����|�*�P�1d�=��i�3���!J+�� ��4P�&��q�^AǓƺt}}���7�[���`�O^�<�`�(r����,�U���#HK����U�z8�o��i��_�Xgq�e�p�a��R��"/������%����}�(�ѯ%o��a���o�޴���2rl���
�h�ގ2��}�pR�=fr�M�똓nJ9k�.��^�'P����T���V�i�n+6��	���^��HN��ӆ������}R4����-�����F�=і�by���q��\_�V��c�P*��]�F*O�\��#���%W�ZT�9�]�[�u�����$�V���Y���'�vH�ԏu*,��1��1�Fa�w�H{&�󼳘�Su�F�8yn�`��� ���Ā�d��F��R�%�>q�6�9u�`�J�c�_��+�[ϧc���0v�޴��c��>���xmƤ�"m8w��ˉ���@�Q,,����"G�㋆"��жJ�iw�0��vJ��Xbґ�$��檧M�����K�Q-J;v<����V8 �p��*i�ؼ{�G�`l���h��/t �#\};��k�t�̉��Ê5�V2�w�@�'��+��x�U	�|͝���ʰT<�Ì���K��+�u�3ܰ�bҪ���-��nt��%�M�����Ƽ���'Z���<H��K霞mhpN�K�#h������C��9�6��C�пP���=8�F/���:�@�d�F#��k��²ğR3<1��5�
|/�Ʃ�@�"/X���N���O@�v��@5k�B�����b�7A{6�      �   ;   x�35�N?ϐP�Р�P�G?��P?�0נ`ϐHMN#CK]C]K�=... ��C      �   B  x��V[��6�朂P R˗��-q<(JÇϟ��rv�@�=vWWW5�����F~I�zH{��0/��rT>��RK�)�FuX}p4hoժ�#�g��_�~�G�w��c3��^��Ɏ�+�ӗ�T�'ڼ���t�s�	�Z��x|G>�"Q�����$�;8P-Ve�H�2�ڂ���\o��=׻-��L�8�4TZ>�5�y1�P�D��8��k�bS�r���=�����c~�1���F��ȕ�:2bw��U���o���;���~��T��g�Ą~��-Wf��ۯì�VX��g�/e��Nn�(��	f���U����ԁa6�e1NN{�ȋ�v;�E�`��x��ZK��\����p���V��m�}b��Vم�Ia΋J�4R�awt��"NPRq��w��[b&���,��׭��)m$�m�Y�}?���P���Z!�ЇfCE!'��Y����1=w|�,��;�v�F�Ⴔ���4Խ (k�*���npS�����{L�LPW��FD�}��r�����W
$�K�'p:�a^��~Ѐ�[�gO#�X�{r�
y���EX����~���K�X������<Ǿ�F2�5�ԟ2:6	$c�n9ȲZXUK/R�i0��TE�m�8�b�9��7�%�cpfg���Z����(޼��K}n�e�s/@9�?��p�u��C�=���ٺ1��r%����k1���F ��D�����q�jWW�OV����]UF��va��܇\�Fb��L�2�`�~�g��si"���M�zK��C�~�Ŏ�H���Œ����ҽ���nl`��Yb�Q�M'���'V���p��?(�ZqQv� ��j4�BӘ��]��զ�Z�.�
:�x���=�{2M�P�����/�8
L5�l{�F�ܱr�Y�'����=����r�N����猶�Pկ�
^��e�S��ǀ��+Ҳo�]O�a%�S�+�/o��jvx�P��枤��0?4�Ɩ)ś�>�.�ǥ��x#��-)j����\����߇mu�����Mx���˹��gq�e,d[�:�6u��察}||��v��     