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
<!ENTITY % css "css" >
<!ENTITY % javascript "javascript" >

<!-- ============================================================= -->
<!--                    COMMON ATTLIST SETS                        -->
<!-- ============================================================= -->



<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->



<!--                    LONG NAME: pub Metadata                   -->
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
   (%css;)*, 
   (%javascript;)*, 
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


<!-- css and javascript elements -->
<!ENTITY % assets.content "(#PCDATA)*"
>
<!ENTITY % assets.attributes
             "%id-atts;
              %localization-atts;
              base 
                        CDATA 
                                  #IMPLIED
              %base-attribute-extensions;
              outputclass
                        CDATA 
                                  #IMPLIED"
>
<!ELEMENT css    %assets.content;>
<!ATTLIST css    %assets.attributes;>
<!ELEMENT javascript    %assets.content;>
<!ATTLIST javascript    %assets.attributes;>
 
<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->


<!-- topicmeta types: -->

<!ATTLIST webmeta      %global-atts; class CDATA "+ map/topicmeta webmeta-d/webmeta ">
<!ATTLIST css          %global-atts; class CDATA "+ topic/data webmap/css ">
<!ATTLIST javascript          %global-atts; class CDATA "+ topic/data webmap/javascript ">
<!-- ================== End pub map domain ============================= -->