#include <stdio.h>
#define DDF_EXPOSE_DESCRIPTORS
#include <ddf/src/ddf/ddf.h>
#include <render/font_ddf.h>

const char *get_filename_ext(const char *filename) {
    const char *dot = strrchr(filename, '.');
    if(!dot || dot == filename) return "";
    return dot + 1;
}


int main(int argc, char const *argv[]) {

    if (argc < 2)
    {
        printf("usage: ddf_inspect <input_file>\n");
        return 0;
    }

    const char* ext = get_filename_ext(argv[1]);

    if (strncmp("fontc", ext, 5) == 0) {

        dmRenderDDF::FontMap* msg;

        int res = dmDDF::LoadMessageFromFile(argv[1], &dmRenderDDF_FontMap_DESCRIPTOR, (void**)&msg);
        if (res != 0) goto msgfail;

        printf("Material: %s\n", msg->m_Material);
        printf("Texture count: %d\n", msg->m_Textures.m_Count);
        for (int i = 0; i < msg->m_Textures.m_Count; i++) {
            printf("  > %s\n", msg->m_Textures[i]);
        }
        return 0;

    } else {

        printf("Unknown file/DDF: %s\n", ext);
        return 0;
    }

msgfail:
    printf("Could not load message!\n");

    return 0;
}
