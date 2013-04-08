<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= 

     DITA for Publishers Publication Metadata Map Domain
     
     Copyright (c) 2010 DITA for Publishers

     =============================================================
-->

<!-- ============================================================= -->
<!--                   ARCHITECTURE ENTITIES                       -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!-- topicmeta types: -->
<!ENTITY % webmeta "webmeta" >

<!-- data elements -->
<!ENTITY % style "style" >
<!ENTITY % script "script" >

<!-- ============================================================= -->
<!--                    COMMON ATTLIST SETS                        -->
<!-- ============================================================= -->



<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->



<!--                    LONG NAME: web Metadata                   -->
<!ENTITY % webmeta.content
 "((%linktext;)?, 
   (%searchtitle;)?, 
   (%shortdesc;)?, 
   (%author;)*, 
   (%source;)?, 
   (%critdates;)?, 
   (%permissions;)?, 
   (%metadata;)*, 
   (%audience;)*, 
   (%category;)*, 
   (%keywords;)*, 
   (%prodinfo;)*, 
   (%othermeta;)*, 
   (%style;)*, 
   (%script;)*, 
   (%data;)*)"
>
<!ENTITY % webmeta.attributes
             "lockmeta 
                        (no | 
                         yes | 
                         -dita-use-conref-target)
                                  #IMPLIED
              %univ-atts;"
>
<!ELEMENT webmeta    %webmeta.content;>
<!ATTLIST webmeta    %webmeta.attributes;>

<!-- style and script elements -->
<!ENTITY % script.content "(#PCDATA)*">
<!ENTITY % script.attributes
             "%id-atts;
              %localization-atts;
              async CDATA #FIXED 'async'
              charset CDATA #IMPLIED
              defer CDATA #FIXED 'defer'
              type (text-javascript | text-ecmascript | application-ecmascript |  application-javascript | text-vbscript | CDATA) #IMPLIED
              "
              >

<!ENTITY % style.content "(#PCDATA)*">

<!ENTITY % style.attributes
             "%id-atts;
              %localization-atts;"
>
<!ELEMENT style %style.content;>
<!ATTLIST style %style.attributes;>

<!ELEMENT script %script.content;>
<!ATTLIST script %script.attributes;>
 
<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->


<!-- topicmeta types: -->

<!ATTLIST webmeta      %global-atts; class CDATA "+ map/topicmeta webmeta-d/webmeta ">
<!ATTLIST style        %global-atts; class CDATA "+ topic/data webmap/style ">
<!ATTLIST script       %global-atts; class CDATA "+ topic/data webmap/script ">
<!-- ================== End pub map domain ============================= -->