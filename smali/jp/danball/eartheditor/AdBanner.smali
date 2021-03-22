.class public final Ljp/danball/eartheditor/AdBanner;
.super Ljava/lang/Object;
.source "AdBanner.java"


# static fields
.field private static final ADMOB_LIMIT:J = 0xea60L

.field private static final REQ_WAIT:J = 0x3a98L

.field private static final STATE_FAILED:I = 0x3

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_LOADED:I = 0x2

.field private static final STATE_REQ:I = 0x1


# instance fields
.field private activity:Landroid/app/Activity;

.field private final ad_id:Ljava/lang/String;

.field public final ad_size:Lcom/google/android/gms/ads/AdSize;

.field private adview:Lcom/google/android/gms/ads/AdView;

.field public dummy_image:Ljava/lang/String;

.field public dummy_link:Ljava/lang/String;

.field private dummyview:Landroid/widget/RelativeLayout;

.field public dx:I

.field public dy:I

.field private limit_time:J

.field public req_stop:Z

.field private req_time:J

.field private state:I

.field public update_margin:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;)V
    .locals 3
    .param p1, "activity_"    # Landroid/app/Activity;
    .param p2, "ad_id_"    # Ljava/lang/String;
    .param p3, "ad_size_"    # Lcom/google/android/gms/ads/AdSize;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Ljp/danball/eartheditor/AdBanner;->activity:Landroid/app/Activity;

    .line 63
    iput-object p2, p0, Ljp/danball/eartheditor/AdBanner;->ad_id:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Ljp/danball/eartheditor/AdBanner;->ad_size:Lcom/google/android/gms/ads/AdSize;

    .line 66
    iput-object v0, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    .line 67
    iput-object v0, p0, Ljp/danball/eartheditor/AdBanner;->dummyview:Landroid/widget/RelativeLayout;

    .line 68
    iput v2, p0, Ljp/danball/eartheditor/AdBanner;->state:I

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljp/danball/eartheditor/AdBanner;->limit_time:J

    iput-wide v0, p0, Ljp/danball/eartheditor/AdBanner;->req_time:J

    .line 70
    iput-boolean v2, p0, Ljp/danball/eartheditor/AdBanner;->req_stop:Z

    .line 71
    iput v2, p0, Ljp/danball/eartheditor/AdBanner;->dy:I

    iput v2, p0, Ljp/danball/eartheditor/AdBanner;->dx:I

    .line 72
    iput-boolean v2, p0, Ljp/danball/eartheditor/AdBanner;->update_margin:Z

    .line 73
    return-void
.end method

.method static synthetic access$002(Ljp/danball/eartheditor/AdBanner;I)I
    .locals 0
    .param p0, "x0"    # Ljp/danball/eartheditor/AdBanner;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Ljp/danball/eartheditor/AdBanner;->state:I

    return p1
.end method

.method static synthetic access$100(Ljp/danball/eartheditor/AdBanner;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Ljp/danball/eartheditor/AdBanner;

    .prologue
    .line 32
    iget-object v0, p0, Ljp/danball/eartheditor/AdBanner;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private getDummyView()Landroid/view/View;
    .locals 10

    .prologue
    .line 253
    iget-object v6, p0, Ljp/danball/eartheditor/AdBanner;->dummyview:Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_0

    iget-object v6, p0, Ljp/danball/eartheditor/AdBanner;->dummyview:Landroid/widget/RelativeLayout;

    .line 310
    :goto_0
    return-object v6

    .line 257
    :cond_0
    :try_start_0
    iget-object v6, p0, Ljp/danball/eartheditor/AdBanner;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    iget-object v7, p0, Ljp/danball/eartheditor/AdBanner;->dummy_image:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 258
    .local v4, "is":Ljava/io/InputStream;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 259
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 261
    new-instance v1, Landroid/widget/ImageButton;

    iget-object v6, p0, Ljp/danball/eartheditor/AdBanner;->activity:Landroid/app/Activity;

    invoke-direct {v1, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 262
    .local v1, "button":Landroid/widget/ImageButton;
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 263
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 264
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 265
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 267
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 268
    .local v2, "disp":Landroid/util/DisplayMetrics;
    iget-object v6, p0, Ljp/danball/eartheditor/AdBanner;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 270
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v6, p0, Ljp/danball/eartheditor/AdBanner;->ad_size:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v6}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, p0, Ljp/danball/eartheditor/AdBanner;->ad_size:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v7}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 271
    .local v5, "param":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    new-instance v6, Landroid/widget/RelativeLayout;

    iget-object v7, p0, Ljp/danball/eartheditor/AdBanner;->activity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Ljp/danball/eartheditor/AdBanner;->dummyview:Landroid/widget/RelativeLayout;

    .line 274
    iget-object v6, p0, Ljp/danball/eartheditor/AdBanner;->dummyview:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v1, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    new-instance v6, Ljp/danball/eartheditor/AdBanner$2;

    invoke-direct {v6, p0}, Ljp/danball/eartheditor/AdBanner$2;-><init>(Ljp/danball/eartheditor/AdBanner;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    new-instance v6, Ljp/danball/eartheditor/AdBanner$3;

    invoke-direct {v6, p0, v1}, Ljp/danball/eartheditor/AdBanner$3;-><init>(Ljp/danball/eartheditor/AdBanner;Landroid/widget/ImageButton;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    iget-object v6, p0, Ljp/danball/eartheditor/AdBanner;->dummyview:Landroid/widget/RelativeLayout;

    goto/16 :goto_0

    .line 305
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "button":Landroid/widget/ImageButton;
    .end local v2    # "disp":Landroid/util/DisplayMetrics;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "param":Landroid/widget/RelativeLayout$LayoutParams;
    :catch_0
    move-exception v3

    .line 306
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "Error ad_dummy_image can\'t found."

    invoke-static {v6}, Ljp/danball/eartheditor/DebugLog;->Log(Ljava/lang/String;)V

    .line 307
    const/4 v6, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public ad_release()V
    .locals 3

    .prologue
    .line 93
    iget-object v1, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 95
    .local v0, "view":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    iget-object v1, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 97
    :cond_0
    iget-object v1, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    .line 99
    const/4 v1, 0x0

    iput v1, p0, Ljp/danball/eartheditor/AdBanner;->state:I

    .line 100
    iget-object v1, p0, Ljp/danball/eartheditor/AdBanner;->ad_size:Lcom/google/android/gms/ads/AdSize;

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    if-ne v1, v2, :cond_2

    const-string v1, "-- Admob Rectangle Release"

    :goto_0
    invoke-static {v1}, Ljp/danball/eartheditor/DebugLog;->Log(Ljava/lang/String;)V

    .line 102
    .end local v0    # "view":Landroid/view/ViewGroup;
    :cond_1
    return-void

    .line 100
    .restart local v0    # "view":Landroid/view/ViewGroup;
    :cond_2
    const-string v1, "-- Admob Banner Release"

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 88
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    .line 89
    return-void
.end method

.method public getParent()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 181
    :goto_0
    return-object v0

    .line 178
    :cond_0
    iget-object v0, p0, Ljp/danball/eartheditor/AdBanner;->dummyview:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljp/danball/eartheditor/AdBanner;->dummyview:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Ljp/danball/eartheditor/AdBanner;->dummyview:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    .line 181
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 234
    iget-object v1, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 236
    .local v0, "view":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 237
    iget-object v1, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 238
    iget-object v1, p0, Ljp/danball/eartheditor/AdBanner;->ad_size:Lcom/google/android/gms/ads/AdSize;

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    if-ne v1, v2, :cond_2

    const-string v1, "<< Admob Rectangle Hide"

    :goto_0
    invoke-static {v1}, Ljp/danball/eartheditor/DebugLog;->Log(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Ljp/danball/eartheditor/AdBanner;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljp/danball/eartheditor/AdBanner;->ad_release()V

    .line 243
    .end local v0    # "view":Landroid/view/ViewGroup;
    :cond_0
    iget-object v1, p0, Ljp/danball/eartheditor/AdBanner;->dummyview:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 244
    iget-object v1, p0, Ljp/danball/eartheditor/AdBanner;->dummyview:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 245
    .restart local v0    # "view":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 246
    iget-object v1, p0, Ljp/danball/eartheditor/AdBanner;->dummyview:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 249
    .end local v0    # "view":Landroid/view/ViewGroup;
    :cond_1
    return-void

    .line 238
    .restart local v0    # "view":Landroid/view/ViewGroup;
    :cond_2
    const-string v1, "<< Admob Banner Hide"

    goto :goto_0
.end method

.method public isDummyAbort()Z
    .locals 2

    .prologue
    .line 171
    invoke-direct {p0}, Ljp/danball/eartheditor/AdBanner;->getDummyView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Ljp/danball/eartheditor/AdBanner;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpired()Z
    .locals 4

    .prologue
    .line 165
    iget-wide v0, p0, Ljp/danball/eartheditor/AdBanner;->limit_time:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljp/danball/eartheditor/AdBanner;->limit_time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 105
    iget v1, p0, Ljp/danball/eartheditor/AdBanner;->state:I

    if-ne v1, v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ljp/danball/eartheditor/AdBanner;->req_time:J

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 83
    :cond_0
    return-void
.end method

.method public req_flag()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 112
    iget-boolean v2, p0, Ljp/danball/eartheditor/AdBanner;->req_stop:Z

    if-eqz v2, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Ljp/danball/eartheditor/AdBanner;->state:I

    if-eqz v2, :cond_4

    iget v2, p0, Ljp/danball/eartheditor/AdBanner;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    .line 114
    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljp/danball/eartheditor/AdBanner;->isExpired()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    iget v2, p0, Ljp/danball/eartheditor/AdBanner;->state:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ljp/danball/eartheditor/AdBanner;->req_time:J

    const-wide/16 v6, 0x3a98

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    :cond_3
    iget v2, p0, Ljp/danball/eartheditor/AdBanner;->state:I

    if-ne v2, v1, :cond_0

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ljp/danball/eartheditor/AdBanner;->req_time:J

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public req_time()J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Ljp/danball/eartheditor/AdBanner;->req_time:J

    return-wide v0
.end method

.method public request()V
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Ljp/danball/eartheditor/AdBanner;->req_flag()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Ljp/danball/eartheditor/AdBanner;->ad_release()V

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Ljp/danball/eartheditor/AdBanner;->state:I

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljp/danball/eartheditor/AdBanner;->req_time:J

    .line 127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljp/danball/eartheditor/AdBanner;->limit_time:J

    .line 129
    iget-object v0, p0, Ljp/danball/eartheditor/AdBanner;->ad_size:Lcom/google/android/gms/ads/AdSize;

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    if-ne v0, v1, :cond_1

    const-string v0, "++ Admob Rectangle New"

    :goto_1
    invoke-static {v0}, Ljp/danball/eartheditor/DebugLog;->Log(Ljava/lang/String;)V

    .line 130
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Ljp/danball/eartheditor/AdBanner;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    .line 131
    iget-object v0, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Ljp/danball/eartheditor/AdBanner;->ad_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Ljp/danball/eartheditor/AdBanner;->ad_size:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 133
    iget-object v0, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Ljp/danball/eartheditor/AdBanner$1;

    invoke-direct {v1, p0}, Ljp/danball/eartheditor/AdBanner$1;-><init>(Ljp/danball/eartheditor/AdBanner;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 160
    iget-object v0, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_0

    .line 129
    :cond_1
    const-string v0, "++ Admob Banner New"

    goto :goto_1
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    .line 78
    :cond_0
    return-void
.end method

.method public show(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Landroid/view/animation/Animation;Z)V
    .locals 10
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "animation"    # Landroid/view/animation/Animation;
    .param p4, "wait"    # Z

    .prologue
    const/4 v7, 0x2

    .line 206
    if-eqz p4, :cond_1

    iget v5, p0, Ljp/danball/eartheditor/AdBanner;->state:I

    if-eq v5, v7, :cond_1

    iget v5, p0, Ljp/danball/eartheditor/AdBanner;->state:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-virtual {p0}, Ljp/danball/eartheditor/AdBanner;->hide()V

    .line 211
    :try_start_0
    move-object v0, p2

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    move-object v4, v0

    .line 212
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v5, v5, 0x7

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    iget v5, p0, Ljp/danball/eartheditor/AdBanner;->dx:I

    div-int/lit8 v2, v5, 0x2

    .line 213
    .local v2, "dx0":I
    :goto_1
    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v5, v5, 0x70

    const/16 v6, 0x10

    if-ne v5, v6, :cond_5

    iget v5, p0, Ljp/danball/eartheditor/AdBanner;->dy:I

    div-int/lit8 v3, v5, 0x2

    .line 214
    .local v3, "dy0":I
    :goto_2
    neg-int v5, v2

    neg-int v6, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v2    # "dx0":I
    .end local v3    # "dy0":I
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :goto_3
    iget v5, p0, Ljp/danball/eartheditor/AdBanner;->state:I

    if-ne v5, v7, :cond_7

    .line 219
    iget-object v5, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p1, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    iget-object v5, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v5}, Lcom/google/android/gms/ads/AdView;->requestLayout()V

    .line 221
    iget-object v5, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 222
    if-eqz p3, :cond_2

    iget-object v5, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v5, p3}, Lcom/google/android/gms/ads/AdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 223
    :cond_2
    iget-wide v6, p0, Ljp/danball/eartheditor/AdBanner;->limit_time:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    iput-wide v6, p0, Ljp/danball/eartheditor/AdBanner;->limit_time:J

    .line 224
    :cond_3
    iget-object v5, p0, Ljp/danball/eartheditor/AdBanner;->ad_size:Lcom/google/android/gms/ads/AdSize;

    sget-object v6, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    if-ne v5, v6, :cond_6

    const-string v5, ">> Admob Rectangle Show"

    :goto_4
    invoke-static {v5}, Ljp/danball/eartheditor/DebugLog;->Log(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    .restart local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    :try_start_1
    iget v2, p0, Ljp/danball/eartheditor/AdBanner;->dx:I

    goto :goto_1

    .line 213
    .restart local v2    # "dx0":I
    :cond_5
    iget v3, p0, Ljp/danball/eartheditor/AdBanner;->dy:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 224
    .end local v2    # "dx0":I
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    const-string v5, ">> Admob Banner Show"

    goto :goto_4

    .line 227
    :cond_7
    invoke-direct {p0}, Ljp/danball/eartheditor/AdBanner;->getDummyView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    if-eqz p3, :cond_0

    iget-object v5, p0, Ljp/danball/eartheditor/AdBanner;->dummyview:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, p3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 215
    :catch_0
    move-exception v5

    goto :goto_3
.end method

.method public updateMargin()V
    .locals 6

    .prologue
    .line 187
    invoke-virtual {p0}, Ljp/danball/eartheditor/AdBanner;->getParent()Landroid/view/ViewGroup;

    move-result-object v4

    if-nez v4, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget v4, p0, Ljp/danball/eartheditor/AdBanner;->state:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    iget-object v3, p0, Ljp/danball/eartheditor/AdBanner;->adview:Lcom/google/android/gms/ads/AdView;

    .line 190
    .local v3, "view":Landroid/view/View;
    :goto_1
    if-eqz v3, :cond_0

    .line 193
    :try_start_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 194
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v2, :cond_0

    .line 195
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    iget v4, p0, Ljp/danball/eartheditor/AdBanner;->dx:I

    div-int/lit8 v0, v4, 0x2

    .line 196
    .local v0, "dx0":I
    :goto_2
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v4, v4, 0x70

    const/16 v5, 0x10

    if-ne v4, v5, :cond_4

    iget v4, p0, Ljp/danball/eartheditor/AdBanner;->dy:I

    div-int/lit8 v1, v4, 0x2

    .line 197
    .local v1, "dy0":I
    :goto_3
    neg-int v4, v0

    neg-int v5, v1

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 198
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    .end local v0    # "dx0":I
    .end local v1    # "dy0":I
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 189
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Ljp/danball/eartheditor/AdBanner;->getDummyView()Landroid/view/View;

    move-result-object v3

    goto :goto_1

    .line 195
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "view":Landroid/view/View;
    :cond_3
    :try_start_1
    iget v0, p0, Ljp/danball/eartheditor/AdBanner;->dx:I

    goto :goto_2

    .line 196
    .restart local v0    # "dx0":I
    :cond_4
    iget v1, p0, Ljp/danball/eartheditor/AdBanner;->dy:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
