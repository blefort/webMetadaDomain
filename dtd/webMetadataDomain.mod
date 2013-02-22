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




 
<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->


<!-- topicmeta types: -->

<!ATTLIST webmeta      %global-atts; class CDATA "+ map/topicmeta webmeta-d/webmeta ">

<!-- ================== End pub map domain ============================= -->