.method private generatePrecip1hr(Lcom/miui/weather2/structures/IndicesData;ILandroid/content/res/Resources;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x1

    if-nez p1, :cond_0

    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_0
    const-string v6, "indices_title_Precip1hr"

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "string"

    invoke-static {}, Lcom/miui/weather2/WeatherApplication;->getInstance()Lcom/miui/weather2/WeatherApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/weather2/WeatherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v5, ""

    :goto_1
    const-string v6, "indices_desc_Precip1hr"

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "string"

    invoke-static {}, Lcom/miui/weather2/WeatherApplication;->getInstance()Lcom/miui/weather2/WeatherApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/weather2/WeatherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v3, v1

    const-string v6, "indices_persip"

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "drawable"

    invoke-static {}, Lcom/miui/weather2/WeatherApplication;->getInstance()Lcom/miui/weather2/WeatherApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/weather2/WeatherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move v4, v2

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/weather2/structures/IndicesData;->getValue(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p3, v3, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v4, v9}, Lcom/miui/weather2/view/onOnePage/Indices;->generateTowTypesIndices(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/view/View;

    move-result-object v6

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    goto :goto_1
.end method
