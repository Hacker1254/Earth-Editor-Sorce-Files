.class public final Ljp/danball/eartheditor/AdManager;
.super Ljava/lang/Object;
.source "AdManager.java"


# instance fields
.field private banner_animation:Landroid/view/animation/AlphaAnimation;

.field public banner_params:Landroid/widget/FrameLayout$LayoutParams;

.field private rect_animation:Landroid/view/animation/AlphaAnimation;

.field public rect_params:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Ljp/danball/eartheditor/AdManager;->banner_params:Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    iget-object v0, p0, Ljp/danball/eartheditor/AdManager;->banner_params:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 33
    iget-object v0, p0, Ljp/danball/eartheditor/AdManager;->banner_params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 36
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Ljp/danball/eartheditor/AdManager;->banner_animation:Landroid/view/animation/AlphaAnimation;

    .line 37
    iget-object v0, p0, Ljp/danball/eartheditor/AdManager;->banner_animation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 38
    iget-object v0, p0, Ljp/danball/eartheditor/AdManager;->banner_animation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 41
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Ljp/danball/eartheditor/AdManager;->rect_params:Landroid/widget/FrameLayout$LayoutParams;

    .line 42
    iget-object v0, p0, Ljp/danball/eartheditor/AdManager;->rect_params:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 43
    iget-object v0, p0, Ljp/danball/eartheditor/AdManager;->rect_params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 46
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Ljp/danball/eartheditor/AdManager;->rect_animation:Landroid/view/animation/AlphaAnimation;

    .line 47
    iget-object v0, p0, Ljp/danball/eartheditor/AdManager;->rect_animation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 48
    iget-object v0, p0, Ljp/danball/eartheditor/AdManager;->rect_animation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 49
    return-void
.end method


# virtual methods
.method public update_banner(Landroid/view/ViewGroup;Ljp/danball/eartheditor/AdBanner;ZILjp/danball/eartheditor/AdBanner;ZI)V
    .locals 12
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "ad_banner"    # Ljp/danball/eartheditor/AdBanner;
    .param p3, "banner_show"    # Z
    .param p4, "banner_pos"    # I
    .param p5, "ad_rect"    # Ljp/danball/eartheditor/AdBanner;
    .param p6, "rect_show"    # Z
    .param p7, "rect_pos"    # I

    .prologue
    .line 56
    const/4 v5, 0x0

    .local v5, "AD_MIDDLE":I
    const/4 v6, 0x1

    .line 57
    .local v6, "AD_TOP":I
    const/4 v3, 0x0

    .local v3, "AD_CENTER":I
    const/16 v4, 0x10

    .line 58
    .local v4, "AD_LEFT":I
    const/4 v2, 0x0

    .local v2, "AD_ANIME_ON":I
    const/16 v1, 0x100

    .line 61
    .local v1, "AD_ANIME_OFF":I
    if-eqz p2, :cond_2

    .line 62
    iget-object v10, p0, Ljp/danball/eartheditor/AdManager;->banner_params:Landroid/widget/FrameLayout$LayoutParams;

    and-int/lit8 v8, p4, 0xf

    if-nez v8, :cond_6

    const/16 v8, 0x10

    move v9, v8

    :goto_0
    move/from16 v0, p4

    and-int/lit16 v8, v0, 0xf0

    if-nez v8, :cond_8

    const/4 v8, 0x1

    :goto_1
    or-int/2addr v8, v9

    iput v8, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 64
    move/from16 v0, p4

    and-int/lit16 v8, v0, 0xf00

    const/16 v9, 0x100

    if-ne v8, v9, :cond_a

    const/4 v7, 0x1

    .line 66
    .local v7, "anime_off":Z
    :goto_2
    invoke-virtual {p2}, Ljp/danball/eartheditor/AdBanner;->getParent()Landroid/view/ViewGroup;

    move-result-object v8

    if-ne v8, p1, :cond_b

    .line 67
    if-eqz p3, :cond_0

    invoke-virtual {p2}, Ljp/danball/eartheditor/AdBanner;->isExpired()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p2}, Ljp/danball/eartheditor/AdBanner;->isDummyAbort()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljp/danball/eartheditor/AdBanner;->hide()V

    .line 71
    :cond_1
    :goto_3
    iget-boolean v8, p2, Ljp/danball/eartheditor/AdBanner;->update_margin:Z

    if-eqz v8, :cond_2

    .line 72
    const/4 v8, 0x0

    iput-boolean v8, p2, Ljp/danball/eartheditor/AdBanner;->update_margin:Z

    .line 73
    invoke-virtual {p2}, Ljp/danball/eartheditor/AdBanner;->updateMargin()V

    .line 78
    .end local v7    # "anime_off":Z
    :cond_2
    if-eqz p5, :cond_5

    .line 79
    iget-object v10, p0, Ljp/danball/eartheditor/AdManager;->rect_params:Landroid/widget/FrameLayout$LayoutParams;

    and-int/lit8 v8, p7, 0xf

    if-nez v8, :cond_d

    const/16 v8, 0x10

    move v9, v8

    :goto_4
    move/from16 v0, p7

    and-int/lit16 v8, v0, 0xf0

    if-nez v8, :cond_f

    const/4 v8, 0x1

    :goto_5
    or-int/2addr v8, v9

    iput v8, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 81
    move/from16 v0, p7

    and-int/lit16 v8, v0, 0xf00

    const/16 v9, 0x100

    if-ne v8, v9, :cond_11

    const/4 v7, 0x1

    .line 83
    .restart local v7    # "anime_off":Z
    :goto_6
    invoke-virtual/range {p5 .. p5}, Ljp/danball/eartheditor/AdBanner;->getParent()Landroid/view/ViewGroup;

    move-result-object v8

    if-ne v8, p1, :cond_12

    .line 84
    if-eqz p6, :cond_3

    invoke-virtual/range {p5 .. p5}, Ljp/danball/eartheditor/AdBanner;->isExpired()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual/range {p5 .. p5}, Ljp/danball/eartheditor/AdBanner;->isDummyAbort()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    invoke-virtual/range {p5 .. p5}, Ljp/danball/eartheditor/AdBanner;->hide()V

    .line 88
    :cond_4
    :goto_7
    move-object/from16 v0, p5

    iget-boolean v8, v0, Ljp/danball/eartheditor/AdBanner;->update_margin:Z

    if-eqz v8, :cond_5

    .line 89
    const/4 v8, 0x0

    move-object/from16 v0, p5

    iput-boolean v8, v0, Ljp/danball/eartheditor/AdBanner;->update_margin:Z

    .line 90
    invoke-virtual/range {p5 .. p5}, Ljp/danball/eartheditor/AdBanner;->updateMargin()V

    .line 93
    .end local v7    # "anime_off":Z
    :cond_5
    return-void

    .line 62
    :cond_6
    and-int/lit8 v8, p4, 0xf

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    const/16 v8, 0x30

    move v9, v8

    goto :goto_0

    :cond_7
    const/16 v8, 0x50

    move v9, v8

    goto/16 :goto_0

    :cond_8
    move/from16 v0, p4

    and-int/lit16 v8, v0, 0xf0

    const/16 v11, 0x10

    if-ne v8, v11, :cond_9

    const/4 v8, 0x3

    goto/16 :goto_1

    :cond_9
    const/4 v8, 0x5

    goto/16 :goto_1

    .line 64
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 69
    .restart local v7    # "anime_off":Z
    :cond_b
    if-eqz p3, :cond_1

    iget-object v9, p0, Ljp/danball/eartheditor/AdManager;->banner_params:Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v7, :cond_c

    const/4 v8, 0x0

    :goto_8
    const/4 v10, 0x1

    invoke-virtual {p2, p1, v9, v8, v10}, Ljp/danball/eartheditor/AdBanner;->show(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Landroid/view/animation/Animation;Z)V

    goto :goto_3

    :cond_c
    iget-object v8, p0, Ljp/danball/eartheditor/AdManager;->banner_animation:Landroid/view/animation/AlphaAnimation;

    goto :goto_8

    .line 79
    .end local v7    # "anime_off":Z
    :cond_d
    and-int/lit8 v8, p7, 0xf

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    const/16 v8, 0x30

    move v9, v8

    goto :goto_4

    :cond_e
    const/16 v8, 0x50

    move v9, v8

    goto :goto_4

    :cond_f
    move/from16 v0, p7

    and-int/lit16 v8, v0, 0xf0

    const/16 v11, 0x10

    if-ne v8, v11, :cond_10

    const/4 v8, 0x3

    goto :goto_5

    :cond_10
    const/4 v8, 0x5

    goto :goto_5

    .line 81
    :cond_11
    const/4 v7, 0x0

    goto :goto_6

    .line 86
    .restart local v7    # "anime_off":Z
    :cond_12
    if-eqz p6, :cond_4

    iget-object v9, p0, Ljp/danball/eartheditor/AdManager;->rect_params:Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v7, :cond_13

    const/4 v8, 0x0

    :goto_9
    const/4 v10, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, p1, v9, v8, v10}, Ljp/danball/eartheditor/AdBanner;->show(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Landroid/view/animation/Animation;Z)V

    goto :goto_7

    :cond_13
    iget-object v8, p0, Ljp/danball/eartheditor/AdManager;->rect_animation:Landroid/view/animation/AlphaAnimation;

    goto :goto_9
.end method

.method public update_request(Ljp/danball/eartheditor/AdBanner;Ljp/danball/eartheditor/AdBanner;Ljp/danball/eartheditor/AdInterstitial;)V
    .locals 8
    .param p1, "ad_banner"    # Ljp/danball/eartheditor/AdBanner;
    .param p2, "ad_rect"    # Ljp/danball/eartheditor/AdBanner;
    .param p3, "ad_inter"    # Ljp/danball/eartheditor/AdInterstitial;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 101
    if-eqz p1, :cond_3

    move v0, v1

    .local v0, "banner":Z
    :goto_0
    if-eqz p2, :cond_4

    move v2, v1

    .local v2, "rect":Z
    :goto_1
    if-eqz p3, :cond_5

    .line 110
    .local v1, "inter":Z
    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljp/danball/eartheditor/AdBanner;->isLoading()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {p2}, Ljp/danball/eartheditor/AdBanner;->isLoading()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-eqz v1, :cond_6

    invoke-virtual {p3}, Ljp/danball/eartheditor/AdInterstitial;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 142
    :cond_2
    :goto_3
    return-void

    .end local v0    # "banner":Z
    .end local v1    # "inter":Z
    .end local v2    # "rect":Z
    :cond_3
    move v0, v4

    .line 101
    goto :goto_0

    .restart local v0    # "banner":Z
    :cond_4
    move v2, v4

    goto :goto_1

    .restart local v2    # "rect":Z
    :cond_5
    move v1, v4

    goto :goto_2

    .line 113
    .restart local v1    # "inter":Z
    :cond_6
    const/4 v3, 0x0

    .line 116
    .local v3, "req":Z
    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljp/danball/eartheditor/AdBanner;->req_flag()Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v3, :cond_7

    .line 117
    if-eqz v2, :cond_9

    invoke-virtual {p2}, Ljp/danball/eartheditor/AdBanner;->req_flag()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p2}, Ljp/danball/eartheditor/AdBanner;->req_time()J

    move-result-wide v4

    invoke-virtual {p1}, Ljp/danball/eartheditor/AdBanner;->req_time()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_9

    .line 128
    :cond_7
    :goto_4
    if-eqz v2, :cond_8

    invoke-virtual {p2}, Ljp/danball/eartheditor/AdBanner;->req_flag()Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez v3, :cond_8

    .line 129
    if-eqz v1, :cond_b

    invoke-virtual {p3}, Ljp/danball/eartheditor/AdInterstitial;->req_flag()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p3}, Ljp/danball/eartheditor/AdInterstitial;->req_time()J

    move-result-wide v4

    invoke-virtual {p2}, Ljp/danball/eartheditor/AdBanner;->req_time()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_b

    .line 138
    :cond_8
    :goto_5
    if-eqz v1, :cond_2

    invoke-virtual {p3}, Ljp/danball/eartheditor/AdInterstitial;->req_flag()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    .line 139
    invoke-virtual {p3}, Ljp/danball/eartheditor/AdInterstitial;->request()V

    .line 140
    const/4 v3, 0x1

    goto :goto_3

    .line 119
    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {p3}, Ljp/danball/eartheditor/AdInterstitial;->req_flag()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p3}, Ljp/danball/eartheditor/AdInterstitial;->req_time()J

    move-result-wide v4

    invoke-virtual {p1}, Ljp/danball/eartheditor/AdBanner;->req_time()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_7

    .line 122
    :cond_a
    invoke-virtual {p1}, Ljp/danball/eartheditor/AdBanner;->request()V

    .line 123
    const/4 v3, 0x1

    goto :goto_4

    .line 132
    :cond_b
    invoke-virtual {p2}, Ljp/danball/eartheditor/AdBanner;->request()V

    .line 133
    const/4 v3, 0x1

    goto :goto_5
.end method
