.class Ljp/danball/eartheditor/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/MainActivity;->postSns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/danball/eartheditor/MainActivity;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$ss:Landroid/graphics/Bitmap;

.field final synthetic val$type:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$use_image:Z


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/MainActivity;ZLandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ljp/danball/eartheditor/MainActivity;

    .prologue
    .line 820
    iput-object p1, p0, Ljp/danball/eartheditor/MainActivity$7;->this$0:Ljp/danball/eartheditor/MainActivity;

    iput-boolean p2, p0, Ljp/danball/eartheditor/MainActivity$7;->val$use_image:Z

    iput-object p3, p0, Ljp/danball/eartheditor/MainActivity$7;->val$ss:Landroid/graphics/Bitmap;

    iput-object p4, p0, Ljp/danball/eartheditor/MainActivity$7;->val$msg:Ljava/lang/String;

    iput-object p5, p0, Ljp/danball/eartheditor/MainActivity$7;->val$url:Ljava/lang/String;

    iput-object p6, p0, Ljp/danball/eartheditor/MainActivity$7;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 822
    sget-object v10, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 825
    .local v2, "lang_ja":Z
    iget-boolean v10, p0, Ljp/danball/eartheditor/MainActivity$7;->val$use_image:Z

    if-eqz v10, :cond_5

    .line 826
    iget-object v10, p0, Ljp/danball/eartheditor/MainActivity$7;->val$ss:Landroid/graphics/Bitmap;

    if-nez v10, :cond_1

    .line 827
    iget-object v10, p0, Ljp/danball/eartheditor/MainActivity$7;->this$0:Ljp/danball/eartheditor/MainActivity;

    invoke-static {v10}, Ljp/danball/eartheditor/MainActivity;->access$300(Ljp/danball/eartheditor/MainActivity;)Ljp/danball/eartheditor/MainActivity;

    move-result-object v11

    if-eqz v2, :cond_0

    const-string v10, "\u753b\u50cf\u306e\u751f\u6210\u306b\u5931\u6557\u3057\u307e\u3057\u305f"

    :goto_0
    const/4 v12, 0x1

    invoke-static {v11, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 892
    :goto_1
    return-void

    .line 827
    :cond_0
    const-string v10, "Failed."

    goto :goto_0

    .line 830
    :cond_1
    iget-object v10, p0, Ljp/danball/eartheditor/MainActivity$7;->this$0:Ljp/danball/eartheditor/MainActivity;

    invoke-virtual {v10}, Ljp/danball/eartheditor/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 832
    .local v5, "resolver":Landroid/content/ContentResolver;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 833
    .local v9, "values":Landroid/content/ContentValues;
    const-string v10, "mime_type"

    const-string v11, "image/png"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const-string v10, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 836
    const/4 v6, 0x0

    .line 837
    .local v6, "succeeded":Z
    const/4 v8, 0x0

    .line 839
    .local v8, "uri":Landroid/net/Uri;
    :try_start_0
    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v10, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 841
    if-eqz v8, :cond_2

    .line 842
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-virtual {v5, v8}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 843
    .local v4, "out":Ljava/io/BufferedOutputStream;
    iget-object v10, p0, Ljp/danball/eartheditor/MainActivity$7;->val$ss:Landroid/graphics/Bitmap;

    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x64

    invoke-virtual {v10, v11, v12, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 844
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 845
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    const/4 v6, 0x1

    .line 858
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    .line 859
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 860
    .local v1, "intent":Landroid/content/Intent;
    const-string v10, "android.intent.action.SEND"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 861
    const-string v10, "image/png"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 862
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {v1, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 863
    const-string v10, "android.intent.extra.TEXT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Ljp/danball/eartheditor/MainActivity$7;->val$msg:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Ljp/danball/eartheditor/MainActivity$7;->val$url:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 864
    iget-object v10, p0, Ljp/danball/eartheditor/MainActivity$7;->this$0:Ljp/danball/eartheditor/MainActivity;

    const/16 v11, 0xc8

    invoke-virtual {v10, v1, v11}, Ljp/danball/eartheditor/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 865
    iget-object v10, p0, Ljp/danball/eartheditor/MainActivity$7;->this$0:Ljp/danball/eartheditor/MainActivity;

    invoke-static {v10, v8}, Ljp/danball/eartheditor/MainActivity;->access$802(Ljp/danball/eartheditor/MainActivity;Landroid/net/Uri;)Landroid/net/Uri;

    goto/16 :goto_1

    .line 849
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 850
    .local v0, "e":Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_2

    .line 852
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 853
    .local v0, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    goto :goto_2

    .line 855
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    throw v10

    .line 867
    :cond_3
    iget-object v10, p0, Ljp/danball/eartheditor/MainActivity$7;->this$0:Ljp/danball/eartheditor/MainActivity;

    invoke-static {v10}, Ljp/danball/eartheditor/MainActivity;->access$300(Ljp/danball/eartheditor/MainActivity;)Ljp/danball/eartheditor/MainActivity;

    move-result-object v11

    if-eqz v2, :cond_4

    const-string v10, "\u753b\u50cf\u306e\u4e00\u6642\u4fdd\u5b58\u306b\u5931\u6557\u3057\u307e\u3057\u305f"

    :goto_3
    const/4 v12, 0x1

    invoke-static {v11, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_4
    const-string v10, "Failed."

    goto :goto_3

    .line 872
    .end local v5    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "succeeded":Z
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_5
    iget-object v10, p0, Ljp/danball/eartheditor/MainActivity$7;->val$type:Ljava/lang/String;

    const-string v11, "twitter"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 876
    :try_start_1
    iget-object v10, p0, Ljp/danball/eartheditor/MainActivity$7;->val$msg:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "+"

    const-string v12, "%20"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 880
    .local v3, "msg_enc":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http://twitter.com/share?url="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Ljp/danball/eartheditor/MainActivity$7;->val$url:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&text="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 881
    .local v7, "twitter_str":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v1, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 882
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v10, p0, Ljp/danball/eartheditor/MainActivity$7;->this$0:Ljp/danball/eartheditor/MainActivity;

    const/16 v11, 0xc8

    invoke-virtual {v10, v1, v11}, Ljp/danball/eartheditor/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 877
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "msg_enc":Ljava/lang/String;
    .end local v7    # "twitter_str":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 878
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto/16 :goto_1

    .line 885
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 886
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v10, "android.intent.action.SEND"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 887
    const-string v10, "text/plain"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 888
    const-string v10, "android.intent.extra.TEXT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Ljp/danball/eartheditor/MainActivity$7;->val$msg:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Ljp/danball/eartheditor/MainActivity$7;->val$url:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 889
    iget-object v10, p0, Ljp/danball/eartheditor/MainActivity$7;->this$0:Ljp/danball/eartheditor/MainActivity;

    invoke-static {v10}, Ljp/danball/eartheditor/MainActivity;->access$300(Ljp/danball/eartheditor/MainActivity;)Ljp/danball/eartheditor/MainActivity;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljp/danball/eartheditor/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method
