#include "image.h"

void Init_Gosu_Image(VALUE module)
{
    VALUE rb_cImage = rb_define_class_under(module, "Image", rb_cObject);
}