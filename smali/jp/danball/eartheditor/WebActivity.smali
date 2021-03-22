.class public Ljp/danball/eartheditor/WebActivity;
.super Landroid/app/Activity;
.source "WebActivity.java"


# instance fields
.field button_ext:Landroid/widget/ImageButton;

.field host:Ljava/lang/String;

.field layout:Landroid/widget/LinearLayout;

.field url_scheme:Ljava/lang/String;

.field webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljp/danball/eartheditor/WebActivity;->setVolumeControlStream(I)V

    .line 42
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljp/danball/eartheditor/WebActivity;->requestWindowFeature(I)Z

    .line 43
    invoke-virtual/range {p0 .. p0}, Ljp/danball/eartheditor/WebActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x400

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->addFlags(I)V

    .line 44
    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljp/danball/eartheditor/WebActivity;->setRequestedOrientation(I)V

    .line 48
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/danball/eartheditor/WebActivity;->layout:Landroid/widget/LinearLayout;

    .line 49
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/WebActivity;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Ljp/danball/eartheditor/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "url_scheme"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/danball/eartheditor/WebActivity;->url_scheme:Ljava/lang/String;

    .line 52
    invoke-virtual/range {p0 .. p0}, Ljp/danball/eartheditor/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "url"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/danball/eartheditor/WebActivity;->host:Ljava/lang/String;

    .line 54
    new-instance v17, Landroid/webkit/WebView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/danball/eartheditor/WebActivity;->webview:Landroid/webkit/WebView;

    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/WebActivity;->webview:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/WebActivity;->webview:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/WebActivity;->webview:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/WebActivity;->webview:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/WebActivity;->webview:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Ljp/danball/eartheditor/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "url"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/WebActivity;->webview:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    new-instance v18, Ljp/danball/eartheditor/WebActivity$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljp/danball/eartheditor/WebActivity$1;-><init>(Ljp/danball/eartheditor/WebActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 133
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v11, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 134
    .local v11, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/WebActivity;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/WebActivity;->webview:Landroid/webkit/WebView;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    new-instance v14, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 139
    .local v14, "view":Landroid/view/View;
    const v17, -0xbbbbbc

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/WebActivity;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, 0x1

    invoke-direct/range {v18 .. v20}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 144
    .local v13, "toolbar":Landroid/widget/LinearLayout;
    const/16 v17, 0xff

    const/16 v18, 0xee

    const/16 v19, 0xee

    const/16 v20, 0xee

    invoke-static/range {v17 .. v20}, Landroid/graphics/Color;->argb(IIII)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 147
    new-instance v4, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 148
    .local v4, "button_close":Landroid/widget/ImageButton;
    const v17, 0x108004c

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 149
    sget-object v17, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 150
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 151
    new-instance v17, Ljp/danball/eartheditor/WebActivity$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljp/danball/eartheditor/WebActivity$2;-><init>(Ljp/danball/eartheditor/WebActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Ljp/danball/eartheditor/WebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v5, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 161
    .local v5, "dpi":I
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v0, v5

    move/from16 v17, v0

    const/high16 v18, 0x3e800000    # 0.25f

    mul-float v17, v17, v18

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    const/high16 v19, 0x3e800000    # 0.25f

    mul-float v18, v18, v19

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v6, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 163
    .local v6, "param_close":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v13, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    new-instance v15, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 167
    .local v15, "view_left":Landroid/view/View;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v7, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 168
    .local v7, "param_left":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v0, v17

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 169
    invoke-virtual {v13, v15, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    new-instance v12, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 185
    .local v12, "progress":Landroid/widget/ProgressBar;
    const-string v17, "progress"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 188
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v0, v5

    move/from16 v17, v0

    const v18, 0x3e19999a    # 0.15f

    mul-float v17, v17, v18

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    const v19, 0x3e19999a    # 0.15f

    mul-float v18, v18, v19

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v8, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 189
    .local v8, "param_progress":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v17, 0x11

    move/from16 v0, v17

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 191
    invoke-virtual {v13, v12, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    new-instance v16, Landroid/view/View;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 196
    .local v16, "view_right":Landroid/view/View;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v9, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 197
    .local v9, "param_right":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v0, v17

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 198
    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    new-instance v17, Landroid/widget/ImageButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/danball/eartheditor/WebActivity;->button_ext:Landroid/widget/ImageButton;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/WebActivity;->button_ext:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    sget-object v18, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/WebActivity;->button_ext:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    const v18, 0x1080051

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/WebActivity;->button_ext:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v21}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/WebActivity;->button_ext:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/WebActivity;->button_ext:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    new-instance v18, Ljp/danball/eartheditor/WebActivity$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljp/danball/eartheditor/WebActivity$3;-><init>(Ljp/danball/eartheditor/WebActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/WebActivity;->button_ext:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v0, v5

    move/from16 v19, v0

    const/high16 v20, 0x3e800000    # 0.25f

    mul-float v19, v19, v20

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    int-to-float v0, v5

    move/from16 v20, v0

    const/high16 v21, 0x3e800000    # 0.25f

    mul-float v20, v20, v21

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v10, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 217
    .local v10, "param_toolbar":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/WebActivity;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/WebActivity;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljp/danball/eartheditor/WebActivity;->setContentView(Landroid/view/View;)V

    .line 221
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    iget-object v1, p0, Ljp/danball/eartheditor/WebActivity;->webview:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 245
    iget-object v1, p0, Ljp/danball/eartheditor/WebActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 246
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    iget-object v1, p0, Ljp/danball/eartheditor/WebActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 248
    :cond_0
    iget-object v1, p0, Ljp/danball/eartheditor/WebActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 249
    iget-object v1, p0, Ljp/danball/eartheditor/WebActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 250
    iget-object v1, p0, Ljp/danball/eartheditor/WebActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 251
    iget-object v1, p0, Ljp/danball/eartheditor/WebActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Ljp/danball/eartheditor/WebActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 252
    iget-object v1, p0, Ljp/danball/eartheditor/WebActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 253
    iput-object v2, p0, Ljp/danball/eartheditor/WebActivity;->webview:Landroid/webkit/WebView;

    .line 256
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 257
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Ljp/danball/eartheditor/WebActivity;->webview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Ljp/danball/eartheditor/WebActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 230
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 231
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 236
    iget-object v0, p0, Ljp/danball/eartheditor/WebActivity;->webview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 237
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Ljp/danball/eartheditor/WebActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 240
    :cond_0
    return-void
.end method
