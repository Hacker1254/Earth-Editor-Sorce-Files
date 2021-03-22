.class public final Ljp/danball/eartheditor/Share;
.super Ljava/lang/Object;
.source "Share.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;Ljava/nio/ByteBuffer;II)V
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "buf"    # Ljava/nio/ByteBuffer;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 20
    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    if-lez p3, :cond_0

    if-gtz p4, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    if-eqz p2, :cond_2

    if-lez p3, :cond_2

    if-lez p4, :cond_2

    .line 26
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 27
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1, p2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 30
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "images"

    invoke-direct {v2, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    .local v2, "cachePath":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 32
    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/share_image.png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 33
    .local v7, "stream":Ljava/io/FileOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v1, v8, v9, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 34
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v2    # "cachePath":Ljava/io/File;
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "images"

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .local v5, "imagePath":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v8, "share_image.png"

    invoke-direct {v6, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    .local v6, "newFile":Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".fileprovider"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "authority":Ljava/lang/String;
    invoke-static {p0, v0, v6}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 44
    .local v3, "contentUri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 46
    new-instance v8, Ljp/danball/eartheditor/Share$1;

    invoke-direct {v8, v3, p0, p1}, Ljp/danball/eartheditor/Share$1;-><init>(Landroid/net/Uri;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 35
    .end local v0    # "authority":Ljava/lang/String;
    .end local v3    # "contentUri":Landroid/net/Uri;
    .end local v5    # "imagePath":Ljava/io/File;
    .end local v6    # "newFile":Ljava/io/File;
    :catch_0
    move-exception v4

    .line 36
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 61
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v8, Ljp/danball/eartheditor/Share$2;

    invoke-direct {v8, p1, p0}, Ljp/danball/eartheditor/Share$2;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {p0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
