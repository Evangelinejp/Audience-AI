# Script CANSIM contenant les �quivalences Notes-Fr�quences et les
# fondamentales et harmoniques selon la corde de guitare jou�e
# This is a comment to test Github. Please ignore.
#Note   Entier	Fr�quence	F-2.89%	F+2.89%	
Eq_Notes_Freq = matrix(
+ c(
+	0	,	16	,	16.3516	,	15.879	,	16.8242	,
+	1	,	17	,	17.3239	,	16.8233	,	17.8246	,
+	2	,	18	,	18.354	,	17.8236	,	18.8845	,
+	3	,	19	,	19.4454	,	18.8835	,	20.0074	,
+	4	,	21	,	20.6017	,	20.0063	,	21.1971	,
+	5	,	22	,	21.8268	,	21.196	,	22.4576	,
+	6	,	23	,	23.1247	,	22.4563	,	23.793	,
+	7	,	24	,	24.4997	,	23.7917	,	25.2078	,
+	8	,	26	,	25.9565	,	25.2064	,	26.7067	,
+	9	,	28	,	27.5	,	26.7052	,	28.2947	,
+	10	,	29	,	29.1352	,	28.2932	,	29.9772	,
+	11	,	31	,	30.8677	,	29.9756	,	31.7598	,
+	12	,	33	,	32.7032	,	31.7581	,	33.6483	,
+	13	,	35	,	34.6478	,	33.6465	,	35.6492	,
+	14	,	37	,	36.7081	,	35.6472	,	37.769	,
+	15	,	39	,	38.8909	,	37.7669	,	40.0148	,
+	16	,	41	,	41.2034	,	40.0127	,	42.3942	,
+	17	,	44	,	43.6535	,	42.3919	,	44.9151	,
+	18	,	46	,	46.2493	,	44.9127	,	47.5859	,
+	19	,	49	,	48.9994	,	47.5833	,	50.4155	,
+	20	,	52	,	51.9131	,	50.4128	,	53.4134	,
+	21	,	55	,	55	,	53.4105	,	56.5895	,
+	22	,	58	,	58.2705	,	56.5865	,	59.9545	,
+	23	,	62	,	61.7354	,	59.9513	,	63.5196	,
+	24	,	65	,	65.4064	,	63.5161	,	67.2966	,
+	25	,	69	,	69.2957	,	67.293	,	71.2983	,
+	26	,	73	,	73.4162	,	71.2945	,	75.5379	,
+	27	,	78	,	77.7817	,	75.5339	,	80.0296	,
+	28	,	82	,	82.4069	,	80.0253	,	84.7884	,
+	29	,	87	,	87.3071	,	84.7839	,	89.8302	,
+	30	,	92	,	92.4986	,	89.8254	,	95.1718	,
+	31	,	98	,	97.9989	,	95.1667	,	100.831	,
+	32	,	104	,	103.8262	,	100.8256	,	106.8268	,
+	33	,	110	,	110	,	106.821	,	113.179	,
+	34	,	117	,	116.5409	,	113.1729	,	119.909	,
+	35	,	123	,	123.4708	,	119.9025	,	127.0391	,
+	36	,	131	,	130.8128	,	127.0323	,	134.5933	,
+	37	,	139	,	138.5913	,	134.586	,	142.5966	,
+	38	,	147	,	146.8324	,	142.5889	,	151.0758	,
+	39	,	156	,	155.5635	,	151.0677	,	160.0593	,
+	40	,	165	,	164.8138	,	160.0507	,	169.5769	,
+	41	,	175	,	174.6141	,	169.5678	,	179.6605	,
+	42	,	185	,	184.9972	,	179.6508	,	190.3436	,
+	43	,	196	,	195.9977	,	190.3334	,	201.6621	,
+	44	,	208	,	207.6523	,	201.6512	,	213.6535	,
+	45	,	220	,	220	,	213.642	,	226.358	,
+	46	,	233	,	233.0819	,	226.3458	,	239.8179	,
+	47	,	247	,	246.9417	,	239.805	,	254.0783	,
+	48	,	262	,	261.6256	,	254.0646	,	269.1865	,
+	49	,	277	,	277.1826	,	269.1721	,	285.1932	,
+	50	,	294	,	293.6648	,	285.1779	,	302.1517	,
+	51	,	311	,	311.127	,	302.1354	,	320.1186	,
+	52	,	330	,	329.6276	,	320.1013	,	339.1538	,
+	53	,	349	,	349.2282	,	339.1355	,	359.3209	,
+	54	,	370	,	369.9944	,	359.3016	,	380.6873	,
+	55	,	392	,	391.9954	,	380.6668	,	403.3241	,
+	56	,	415	,	415.3047	,	403.3024	,	427.307	,
+	57	,	440	,	440	,	427.284	,	452.716	,
+	58	,	466	,	466.1638	,	452.6916	,	479.6359	,
+	59	,	494	,	493.8833	,	479.6101	,	508.1565	,
+	60	,	523	,	523.2511	,	508.1292	,	538.3731	,
+	61	,	554	,	554.3653	,	538.3441	,	570.3864	,
+	62	,	587	,	587.3295	,	570.3557	,	604.3034	,
+	63	,	622	,	622.254	,	604.2708	,	640.2371	,
+	64	,	659	,	659.2551	,	640.2026	,	678.3076	,
+	65	,	698	,	698.4565	,	678.2711	,	718.6419	,
+	66	,	740	,	739.9888	,	718.6032	,	761.3745	,
+	67	,	784	,	783.9909	,	761.3335	,	806.6482	,
+	68	,	831	,	830.6094	,	806.6048	,	854.614	,
+	69	,	880	,	880	,	854.568	,	905.432	,
+	70	,	932	,	932.3275	,	905.3833	,	959.2718	,
+	71	,	988	,	987.7666	,	959.2201	,	1016.3131	,
+	72	,	1047	,	1046.5023	,	1016.2583	,	1076.7462	,
+	73	,	1109	,	1108.7305	,	1076.6882	,	1140.7728	,
+	74	,	1175	,	1174.6591	,	1140.7114	,	1208.6067	,
+	75	,	1245	,	1244.5079	,	1208.5417	,	1280.4742	,
+	76	,	1319	,	1318.5102	,	1280.4053	,	1356.6152	,
+	77	,	1397	,	1396.9129	,	1356.5421	,	1437.2837	,
+	78	,	1480	,	1479.9777	,	1437.2063	,	1522.749	,
+	79	,	1568	,	1567.9817	,	1522.6671	,	1613.2964	,
+	80	,	1661	,	1661.2188	,	1613.2096	,	1709.228	,
+	81	,	1760	,	1760	,	1709.136	,	1810.864	,
+	82	,	1865	,	1864.655	,	1810.7665	,	1918.5436	,
+	83	,	1976	,	1975.5332	,	1918.4403	,	2032.6261	,
+	84	,	2093	,	2093.0045	,	2032.5167	,	2153.4924	,
+	85	,	2217	,	2217.461	,	2153.3764	,	2281.5457	,
+	86	,	2349	,	2349.3181	,	2281.4228	,	2417.2134	,
+	87	,	2489	,	2489.0159	,	2417.0833	,	2560.9484	,
+	88	,	2637	,	2637.0205	,	2560.8106	,	2713.2303	,
+	89	,	2794	,	2793.8259	,	2713.0843	,	2874.5674	,
+	90	,	2960	,	2959.9554	,	2874.4127	,	3045.4981	,
+	91	,	3136	,	3135.9635	,	3045.3341	,	3226.5928	,
+	92	,	3322	,	3322.4376	,	3226.4191	,	3418.456	,
+	93	,	3520	,	3520	,	3418.272	,	3621.728	,
+	94	,	3729	,	3729.3101	,	3621.533	,	3837.0872	,
+	95	,	3951	,	3951.0664	,	3836.8806	,	4065.2522	,
+	96	,	4186	,	4186.009	,	4065.0334	,	4306.9847	,
+	97	,	4435	,	4434.9221	,	4306.7528	,	4563.0913	,
+	98	,	4699	,	4698.6363	,	4562.8457	,	4834.4269	,
+	99	,	4978	,	4978.0317	,	4834.1666	,	5121.8969	,
+	100	,	5274	,	5274.0409	,	5121.6211	,	5426.4607	,
+	101	,	5588	,	5587.6517	,	5426.1686	,	5749.1348	,
+	102	,	5920	,	5919.9108	,	5748.8253	,	6090.9962	,
+	103	,	6272	,	6271.927	,	6090.6683	,	6453.1857	,
+	104	,	6645	,	6644.8752	,	6452.8383	,	6836.9121	,
+	105	,	7040	,	7040	,	6836.544	,	7243.456	,
+	106	,	7459	,	7458.6202	,	7243.0661	,	7674.1743	,
+	107	,	7902	,	7902.1328	,	7673.7612	,	8130.5045	,
+	108	,	8372	,	8372.0181	,	8130.0668	,	8613.9694	,
+	109	,	8870	,	8869.8442	,	8613.5057	,	9126.1827	,
+	110	,	9397	,	9397.2726	,	9125.6914	,	9668.8538	,
+	111	,	9956	,	9956.0635	,	9668.3332	,	10243.7937	,
+	112	,	10548	,	10548.0818	,	10243.2423	,	10852.9214	,
+	113	,	11175	,	11175.3034	,	10852.3371	,	11498.2697	,
+	114	,	11840	,	11839.8215	,	11497.6507	,	12181.9924	,
+	115	,	12544	,	12543.854	,	12181.3366	,	12906.3713	,
+	116	,	13290	,	13289.7503	,	12905.6765	,	13673.8241	,
+	117	,	14080	,	14080	,	13673.088	,	14486.912	,
+	118	,	14917	,	14917.2404	,	14486.1321	,	15348.3486	,
+	119	,	15804	,	15804.2656	,	15347.5224	,	16261.0089	,
+	120	,	16744	,	16744.0362	,	16260.1335	,	17227.9388	,
+	121	,	17740	,	17739.6884	,	17227.0114	,	18252.3654	,
+	122	,	18795	,	18794.5451	,	18251.3828	,	19337.7075	,
+	123	,	19912	,	19912.127	,	19336.6665	,	20487.5874	,
+	124	,	21096	,	21096.1636	,	20486.4845	,	21705.8428	,
+	125	,	22351	,	22350.6068	,	21704.6743	,	22996.5393	,
+	126	,	23680	,	23679.6431	,	22995.3014	,	24363.9847	,
+	127	,	25088	,	25087.7079	,	24362.6731	,	25812.7427	,
+	128	,	26580	,	26579.5006	,	25811.3531	,	27347.6482	,
+	129	,	28160	,	28160	,	27346.176	,	28973.824	,
+	130	,	29834	,	29834.4807	,	28972.2642	,	30696.6972	,
+	131	,	31609	,	31608.5313	,	30695.0447	,	32522.0178	,
+	132	,	33488	,	33488.0724	,	32520.2671	,	34455.8776	,
+	133	,	35479	,	35479.3768	,	34454.0228	,	36504.7308	,
+	134	,	37589	,	37589.0903	,	36502.7656	,	38675.415	,
+	135	,	39824	,	39824.2539	,	38673.333	,	40975.1749	,
+	136	,	42192	,	42192.3273	,	40972.969	,	43411.6855	,
+	137	,	44701	,	44701.2136	,	43409.3485	,	45993.0787	,
+	138	,	47359	,	47359.2861	,	45990.6027	,	48727.9695	,
+	139	,	50175	,	50175.4158	,	48725.3463	,	51625.4853	,
+	140	,	53159	,	53159.0013	,	51622.7062	,	54695.2964	,
+	141	,	56320	,	56320	,	54692.352	,	57947.648	,
+	142	,	59669	,	59668.9615	,	57944.5285	,	61393.3945	,
+	143	,	63217	,	63217.0626	,	61390.0895	,	65044.0357	,
+	144	,	66976	,	66976.1447	,	65040.5341	,	68911.7553	,
+	145	,	70959	,	70958.7535	,	68908.0456	,	73009.4615	,
+	146	,	75178	,	75178.1806	,	73005.5312	,	77350.83	,
+	147	,	79649	,	79648.5078	,	77346.666	,	81950.3497	,
+	148	,	84385	,	84384.6546	,	81945.9381	,	86823.3711	,
+	149	,	89402	,	89402.4272	,	86818.6971	,	91986.1574	,
+	150	,	94719	,	94718.5722	,	91981.2055	,	97455.939	,
+	151	,	151515	,	151515	,	97455	,	151515),
+ 152, 5, byrow=TRUE) #nrow=152, ncol=5

colnames(Eq_Notes_Freq) = c('Note', 'Entier', 'Fr�quence', 'F-2.89%', 'F+2.89%')



#Frette	Note	F	H2	H3	H4	H5	H6
CordeE4 = matrix(
+ c(
+	52	,	64	,	71	,	76	,	80	,	83	,
+	53	,	65	,	72	,	77	,	81	,	84	,
+	54	,	66	,	73	,	78	,	82	,	85	,
+	55	,	67	,	74	,	79	,	83	,	86	,
+	56	,	68	,	75	,	80	,	84	,	87	,
+	57	,	69	,	76	,	81	,	85	,	88	,
+	58	,	70	,	77	,	82	,	86	,	89	,
+	59	,	71	,	78	,	83	,	87	,	90	,
+	60	,	72	,	79	,	84	,	88	,	91	,
+	61	,	73	,	80	,	85	,	89	,	92	,
+	62	,	74	,	81	,	86	,	90	,	93	,
+	63	,	75	,	82	,	87	,	91	,	94	,
+	64	,	76	,	83	,	88	,	92	,	95	,
+	65	,	77	,	84	,	89	,	93	,	96	,
+	66	,	78	,	85	,	90	,	94	,	97	,
+	67	,	79	,	86	,	91	,	95	,	98	,
+	68	,	80	,	87	,	92	,	96	,	99	,
+	69	,	81	,	88	,	93	,	97	,	100	,
+	70	,	82	,	89	,	94	,	98	,	101	,
+	71	,	83	,	90	,	95	,	99	,	102	,
+	72	,	84	,	91	,	96	,	100	,	103	,
+	73	,	85	,	92	,	97	,	101	,	104	,
+	74	,	86	,	93	,	98	,	102	,	105	,
+	75	,	87	,	94	,	99	,	103	,	106	,
+	76	,	88	,	95	,	100	,	104	,	107	),
+ 25, 6, byrow=TRUE) #nrow=25, ncol=6

colnames(CordeE4) = c('F', 'H2', 'H3', 'H4', 'H5', 'H6')


#Frette	F	H2	H3	H4	H5	H6
CordeB3 = matrix(
+ c(
+	47	,	59	,	66	,	71	,	75	,	78	,
+	48	,	60	,	67	,	72	,	76	,	79	,
+	49	,	61	,	68	,	73	,	77	,	80	,
+	50	,	62	,	69	,	74	,	78	,	81	,
+	51	,	63	,	70	,	75	,	79	,	82	,
+	52	,	64	,	71	,	76	,	80	,	83	,
+	53	,	65	,	72	,	77	,	81	,	84	,
+	54	,	66	,	73	,	78	,	82	,	85	,
+	55	,	67	,	74	,	79	,	83	,	86	,
+	56	,	68	,	75	,	80	,	84	,	87	,
+	57	,	69	,	76	,	81	,	85	,	88	,
+	58	,	70	,	77	,	82	,	86	,	89	,
+	59	,	71	,	78	,	83	,	87	,	90	,
+	60	,	72	,	79	,	84	,	88	,	91	,
+	61	,	73	,	80	,	85	,	89	,	92	,
+	62	,	74	,	81	,	86	,	90	,	93	,
+	63	,	75	,	82	,	87	,	91	,	94	,
+	64	,	76	,	83	,	88	,	92	,	95	,
+	65	,	77	,	84	,	89	,	93	,	96	,
+	66	,	78	,	85	,	90	,	94	,	97	,
+	67	,	79	,	86	,	91	,	95	,	98	,
+	68	,	80	,	87	,	92	,	96	,	99	,
+	69	,	81	,	88	,	93	,	97	,	100	,
+	70	,	82	,	89	,	94	,	98	,	101	,
+	71	,	83	,	90	,	95	,	99	,	102	),
+ 25, 6, byrow=TRUE) #nrow=25, ncol=6,

colnames(CordeB3) = c('F', 'H2', 'H3', 'H4', 'H5', 'H6')


#Frette	F	H2	H3	H4	H5	H6
CordeG3 = matrix(
+ c(
+	43	,	55	,	62	,	67	,	71	,	74	,
+	44	,	56	,	63	,	68	,	72	,	75	,
+	45	,	57	,	64	,	69	,	73	,	76	,
+	46	,	58	,	65	,	70	,	74	,	77	,
+	47	,	59	,	66	,	71	,	75	,	78	,
+	48	,	60	,	67	,	72	,	76	,	79	,
+	49	,	61	,	68	,	73	,	77	,	80	,
+	50	,	62	,	69	,	74	,	78	,	81	,
+	51	,	63	,	70	,	75	,	79	,	82	,
+	52	,	64	,	71	,	76	,	80	,	83	,
+	53	,	65	,	72	,	77	,	81	,	84	,
+	54	,	66	,	73	,	78	,	82	,	85	,
+	55	,	67	,	74	,	79	,	83	,	86	,
+	56	,	68	,	75	,	80	,	84	,	87	,
+	57	,	69	,	76	,	81	,	85	,	88	,
+	58	,	70	,	77	,	82	,	86	,	89	,
+	59	,	71	,	78	,	83	,	87	,	90	,
+	60	,	72	,	79	,	84	,	88	,	91	,
+	61	,	73	,	80	,	85	,	89	,	92	,
+	62	,	74	,	81	,	86	,	90	,	93	,
+	63	,	75	,	82	,	87	,	91	,	94	,
+	64	,	76	,	83	,	88	,	92	,	95	,
+	65	,	77	,	84	,	89	,	93	,	96	,
+	66	,	78	,	85	,	90	,	94	,	97	,
+	67	,	79	,	86	,	91	,	95	,	98	),
+ 25, 6, byrow=TRUE) #nrow=25, ncol=6

colnames(CordeG3) = c('F', 'H2', 'H3', 'H4', 'H5', 'H6')


#Frette	F	H2	H3	H4	H5	H6
CordeD3 = matrix(
+ c(
+	38	,	50	,	57	,	62	,	66	,	69	,
+	39	,	51	,	58	,	63	,	67	,	70	,
+	40	,	52	,	59	,	64	,	68	,	71	,
+	41	,	53	,	60	,	65	,	69	,	72	,
+	42	,	54	,	61	,	66	,	70	,	73	,
+	43	,	55	,	62	,	67	,	71	,	74	,
+	44	,	56	,	63	,	68	,	72	,	75	,
+	45	,	57	,	64	,	69	,	73	,	76	,
+	46	,	58	,	65	,	70	,	74	,	77	,
+	47	,	59	,	66	,	71	,	75	,	78	,
+	48	,	60	,	67	,	72	,	76	,	79	,
+	49	,	61	,	68	,	73	,	77	,	80	,
+	50	,	62	,	69	,	74	,	78	,	81	,
+	51	,	63	,	70	,	75	,	79	,	82	,
+	52	,	64	,	71	,	76	,	80	,	83	,
+	53	,	65	,	72	,	77	,	81	,	84	,
+	54	,	66	,	73	,	78	,	82	,	85	,
+	55	,	67	,	74	,	79	,	83	,	86	,
+	56	,	68	,	75	,	80	,	84	,	87	,
+	57	,	69	,	76	,	81	,	85	,	88	,
+	58	,	70	,	77	,	82	,	86	,	89	,
+	59	,	71	,	78	,	83	,	87	,	90	,
+	60	,	72	,	79	,	84	,	88	,	91	,
+	61	,	73	,	80	,	85	,	89	,	92	,
+	62	,	74	,	81	,	86	,	90	,	93	),
+ 25, 6, byrow=TRUE) #nrow=25, ncol=6

colnames(CordeD3) = c('F', 'H2', 'H3', 'H4', 'H5', 'H6')


#Frette	F	H2	H3	H4	H5	H6
CordeA2 = matrix(
+ c(
+	33	,	45	,	52	,	57	,	61	,	64	,
+	34	,	46	,	53	,	58	,	62	,	65	,
+	35	,	47	,	54	,	59	,	63	,	66	,
+	36	,	48	,	55	,	60	,	64	,	67	,
+	37	,	49	,	56	,	61	,	65	,	68	,
+	38	,	50	,	57	,	62	,	66	,	69	,
+	39	,	51	,	58	,	63	,	67	,	70	,
+	40	,	52	,	59	,	64	,	68	,	71	,
+	41	,	53	,	60	,	65	,	69	,	72	,
+	42	,	54	,	61	,	66	,	70	,	73	,
+	43	,	55	,	62	,	67	,	71	,	74	,
+	44	,	56	,	63	,	68	,	72	,	75	,
+	45	,	57	,	64	,	69	,	73	,	76	,
+	46	,	58	,	65	,	70	,	74	,	77	,
+	47	,	59	,	66	,	71	,	75	,	78	,
+	48	,	60	,	67	,	72	,	76	,	79	,
+	49	,	61	,	68	,	73	,	77	,	80	,
+	50	,	62	,	69	,	74	,	78	,	81	,
+	51	,	63	,	70	,	75	,	79	,	82	,
+	52	,	64	,	71	,	76	,	80	,	83	,
+	53	,	65	,	72	,	77	,	81	,	84	,
+	54	,	66	,	73	,	78	,	82	,	85	,
+	55	,	67	,	74	,	79	,	83	,	86	,
+	56	,	68	,	75	,	80	,	84	,	87	,
+	57	,	69	,	76	,	81	,	85	,	88	),
+ 25, 6, byrow=TRUE) #nrow=25, ncol=6

colnames(CordeA2) = c('F', 'H2', 'H3', 'H4', 'H5', 'H6')


#Frette	F	H2	H3	H4	H5	H6
CordeE2 = matrix(
+ c(
+	28	,	40	,	47	,	52	,	56	,	59	,
+	29	,	41	,	48	,	53	,	57	,	60	,
+	30	,	42	,	49	,	54	,	58	,	61	,
+	31	,	43	,	50	,	55	,	59	,	62	,
+	32	,	44	,	51	,	56	,	60	,	63	,
+	33	,	45	,	52	,	57	,	61	,	64	,
+	34	,	46	,	53	,	58	,	62	,	65	,
+	35	,	47	,	54	,	59	,	63	,	66	,
+	36	,	48	,	55	,	60	,	64	,	67	,
+	37	,	49	,	56	,	61	,	65	,	68	,
+	38	,	50	,	57	,	62	,	66	,	69	,
+	39	,	51	,	58	,	63	,	67	,	70	,
+	40	,	52	,	59	,	64	,	68	,	71	,
+	41	,	53	,	60	,	65	,	69	,	72	,
+	42	,	54	,	61	,	66	,	70	,	73	,
+	43	,	55	,	62	,	67	,	71	,	74	,
+	44	,	56	,	63	,	68	,	72	,	75	,
+	45	,	57	,	64	,	69	,	73	,	76	,
+	46	,	58	,	65	,	70	,	74	,	77	,
+	47	,	59	,	66	,	71	,	75	,	78	,
+	48	,	60	,	67	,	72	,	76	,	79	,
+	49	,	61	,	68	,	73	,	77	,	80	,
+	50	,	62	,	69	,	74	,	78	,	81	,
+	51	,	63	,	70	,	75	,	79	,	82	,
+	52	,	64	,	71	,	76	,	80	,	83	),
+ 25, 6, byrow=TRUE) #nrow=25, ncol=6

colnames(CordeE2) = c('F', 'H2', 'H3', 'H4', 'H5', 'H6')


#Frette	F	H2	H3	H4	H5	H6
CordeB1 = matrix(
+ c(
+	23	,	35	,	42	,	47	,	51	,	54	,
+	24	,	36	,	43	,	48	,	52	,	55	,
+	25	,	37	,	44	,	49	,	53	,	56	,
+	26	,	38	,	45	,	50	,	54	,	57	,
+	27	,	39	,	46	,	51	,	55	,	58	,
+	28	,	40	,	47	,	52	,	56	,	59	,
+	29	,	41	,	48	,	53	,	57	,	60	,
+	30	,	42	,	49	,	54	,	58	,	61	,
+	31	,	43	,	50	,	55	,	59	,	62	,
+	32	,	44	,	51	,	56	,	60	,	63	,
+	33	,	45	,	52	,	57	,	61	,	64	,
+	34	,	46	,	53	,	58	,	62	,	65	,
+	35	,	47	,	54	,	59	,	63	,	66	,
+	36	,	48	,	55	,	60	,	64	,	67	,
+	37	,	49	,	56	,	61	,	65	,	68	,
+	38	,	50	,	57	,	62	,	66	,	69	,
+	39	,	51	,	58	,	63	,	67	,	70	,
+	40	,	52	,	59	,	64	,	68	,	71	,
+	41	,	53	,	60	,	65	,	69	,	72	,
+	42	,	54	,	61	,	66	,	70	,	73	,
+	43	,	55	,	62	,	67	,	71	,	74	,
+	44	,	56	,	63	,	68	,	72	,	75	,
+	45	,	57	,	64	,	69	,	73	,	76	,
+	46	,	58	,	65	,	70	,	74	,	77	,
+	47	,	59	,	66	,	71	,	75	,	78	),
+ 25, 6, byrow=TRUE) #nrow=25, ncol=6

colnames(CordeB1) = c('F', 'H2', 'H3', 'H4', 'H5', 'H6')


# Note texte  Note distance
literals = c( 'C0', 	 'C#0', 	 'D0', 	 'D#0', 	 'E0', 	 'F0', 	 'F#0', 	 'G0', 	 'G#0', 	 'A0', 	 'A#0', 	 'B0', 	 'C1', 	 'C#1', 	 'D1', 	 'D#1', 	 'E1', 	 'F1', 	 'F#1', 	 'G1', 	 'G#1', 	 'A1', 	 'A#1', 	 'B1', 	 'C2', 	 'C#2', 	 'D2', 	 'D#2', 	 'E2', 	 'F2', 	 'F#2', 	 'G2', 	 'G#2', 	 'A2', 	 'A#2', 	 'B2', 	 'C3', 	 'C#3', 	 'D3', 	 'D#3', 	 'E3', 	 'F3', 	 'F#3', 	 'G3', 	 'G#3', 	 'A3', 	 'A#3', 	 'B3', 	 'C4', 	 'C#4', 	 'D4', 	 'D#4', 	 'E4', 	 'F4', 	 'F#4', 	 'G4', 	 'G#4', 	 'A4', 	 'A#4', 	 'B4', 	 'C5', 	 'C#5', 	 'D5', 	 'D#5', 	 'E5', 	 'F5', 	 'F#5', 	 'G5', 	 'G#5', 	 'A5', 	 'A#5', 	 'B5', 	 'C6', 	 'C#6', 	 'D6', 	 'D#6', 	 'E6', 	 'F6', 	 'F#6', 	 'G6', 	 'G#6', 	 'A6', 	 'A#6', 	 'B6', 	 'C7', 	 'C#7', 	 'D7', 	 'D#7', 	 'E7', 	 'F7', 	 'F#7', 	 'G7', 	 'G#7', 	 'A7', 	 'A#7', 	 'B7', 	 'C8', 	 'C#8', 	 'D8', 	 'D#8', 	 'E8', 	 'F8', 	 'F#8', 	 'G8', 	 'G#8', 	 'A8', 	 'A#8', 	 'B8', 	 'C9', 	 'C#9', 	 'D9', 	 'D#9', 	 'E9', 	 'F9', 	 'F#9', 	 'G9', 	 'G#9', 	 'A9', 	 'A#9', 	 'B9', 	 'C10', 	 'C#10', 	 'D10', 	 'D#10', 	 'E10', 	 'F10', 	 'F#10', 	 'G10', 	 'G#10', 	 'A10', 	 'A#10', 	 'B10', 	 'C11', 	 'C#11', 	 'D11', 	 'D#11', 	 'E11', 	 'F11', 	 'F#11', 	 'G11', 	 'G#11', 	 'A11', 	 'A#11', 	 'B11', 	 'C12', 	 'C#12', 	 'D12', 	 'D#12', 	 'E12', 	 'F12', 	 'F#12', 	 'N/A')

Notes_A_Num = matrix(c(literals , 0:151),152, 2, byrow=FALSE) #nrow=152, ncol=2,


colnames(Notes_A_Num) = c('Lit�ral', 'Int MIDI')


# F H2 H3 H4 H5 H6
Notes_Et_Harm = matrix(
+ c(
+	0	,	12	,	19	,	24	,	28	,	31	,
+	1	,	13	,	20	,	25	,	29	,	32	,
+	2	,	14	,	21	,	26	,	30	,	33	,
+	3	,	15	,	22	,	27	,	31	,	34	,
+	4	,	16	,	23	,	28	,	32	,	35	,
+	5	,	17	,	24	,	29	,	33	,	36	,
+	6	,	18	,	25	,	30	,	34	,	37	,
+	7	,	19	,	26	,	31	,	35	,	38	,
+	8	,	20	,	27	,	32	,	36	,	39	,
+	9	,	21	,	28	,	33	,	37	,	40	,
+	10	,	22	,	29	,	34	,	38	,	41	,
+	11	,	23	,	30	,	35	,	39	,	42	,
+	12	,	24	,	31	,	36	,	40	,	43	,
+	13	,	25	,	32	,	37	,	41	,	44	,
+	14	,	26	,	33	,	38	,	42	,	45	,
+	15	,	27	,	34	,	39	,	43	,	46	,
+	16	,	28	,	35	,	40	,	44	,	47	,
+	17	,	29	,	36	,	41	,	45	,	48	,
+	18	,	30	,	37	,	42	,	46	,	49	,
+	19	,	31	,	38	,	43	,	47	,	50	,
+	20	,	32	,	39	,	44	,	48	,	51	,
+	21	,	33	,	40	,	45	,	49	,	52	,
+	22	,	34	,	41	,	46	,	50	,	53	,
+	23	,	35	,	42	,	47	,	51	,	54	,
+	24	,	36	,	43	,	48	,	52	,	55	,
+	25	,	37	,	44	,	49	,	53	,	56	,
+	26	,	38	,	45	,	50	,	54	,	57	,
+	27	,	39	,	46	,	51	,	55	,	58	,
+	28	,	40	,	47	,	52	,	56	,	59	,
+	29	,	41	,	48	,	53	,	57	,	60	,
+	30	,	42	,	49	,	54	,	58	,	61	,
+	31	,	43	,	50	,	55	,	59	,	62	,
+	32	,	44	,	51	,	56	,	60	,	63	,
+	33	,	45	,	52	,	57	,	61	,	64	,
+	34	,	46	,	53	,	58	,	62	,	65	,
+	35	,	47	,	54	,	59	,	63	,	66	,
+	36	,	48	,	55	,	60	,	64	,	67	,
+	37	,	49	,	56	,	61	,	65	,	68	,
+	38	,	50	,	57	,	62	,	66	,	69	,
+	39	,	51	,	58	,	63	,	67	,	70	,
+	40	,	52	,	59	,	64	,	68	,	71	,
+	41	,	53	,	60	,	65	,	69	,	72	,
+	42	,	54	,	61	,	66	,	70	,	73	,
+	43	,	55	,	62	,	67	,	71	,	74	,
+	44	,	56	,	63	,	68	,	72	,	75	,
+	45	,	57	,	64	,	69	,	73	,	76	,
+	46	,	58	,	65	,	70	,	74	,	77	,
+	47	,	59	,	66	,	71	,	75	,	78	,
+	48	,	60	,	67	,	72	,	76	,	79	,
+	49	,	61	,	68	,	73	,	77	,	80	,
+	50	,	62	,	69	,	74	,	78	,	81	,
+	51	,	63	,	70	,	75	,	79	,	82	,
+	52	,	64	,	71	,	76	,	80	,	83	,
+	53	,	65	,	72	,	77	,	81	,	84	,
+	54	,	66	,	73	,	78	,	82	,	85	,
+	55	,	67	,	74	,	79	,	83	,	86	,
+	56	,	68	,	75	,	80	,	84	,	87	,
+	57	,	69	,	76	,	81	,	85	,	88	,
+	58	,	70	,	77	,	82	,	86	,	89	,
+	59	,	71	,	78	,	83	,	87	,	90	,
+	60	,	72	,	79	,	84	,	88	,	91	,
+	61	,	73	,	80	,	85	,	89	,	92	,
+	62	,	74	,	81	,	86	,	90	,	93	,
+	63	,	75	,	82	,	87	,	91	,	94	,
+	64	,	76	,	83	,	88	,	92	,	95	,
+	65	,	77	,	84	,	89	,	93	,	96	,
+	66	,	78	,	85	,	90	,	94	,	97	,
+	67	,	79	,	86	,	91	,	95	,	98	,
+	68	,	80	,	87	,	92	,	96	,	99	,
+	69	,	81	,	88	,	93	,	97	,	100	,
+	70	,	82	,	89	,	94	,	98	,	101	,
+	71	,	83	,	90	,	95	,	99	,	102	,
+	72	,	84	,	91	,	96	,	100	,	103	,
+	73	,	85	,	92	,	97	,	101	,	104	,
+	74	,	86	,	93	,	98	,	102	,	105	,
+	75	,	87	,	94	,	99	,	103	,	106	,
+	76	,	88	,	95	,	100	,	104	,	107	,
+	77	,	89	,	96	,	101	,	105	,	108	,
+	78	,	90	,	97	,	102	,	106	,	109	,
+	79	,	91	,	98	,	103	,	107	,	110	,
+	80	,	92	,	99	,	104	,	108	,	111	,
+	81	,	93	,	100	,	105	,	109	,	112	,
+	82	,	94	,	101	,	106	,	110	,	113	,
+	83	,	95	,	102	,	107	,	111	,	114	,
+	84	,	96	,	103	,	108	,	112	,	115	,
+	85	,	97	,	104	,	109	,	113	,	116	,
+	86	,	98	,	105	,	110	,	114	,	117	,
+	87	,	99	,	106	,	111	,	115	,	118	,
+	88	,	100	,	107	,	112	,	116	,	119	,
+	89	,	101	,	108	,	113	,	117	,	120	,
+	90	,	102	,	109	,	114	,	118	,	121	,
+	91	,	103	,	110	,	115	,	119	,	122	,
+	92	,	104	,	111	,	116	,	120	,	123	,
+	93	,	105	,	112	,	117	,	121	,	124	,
+	94	,	106	,	113	,	118	,	122	,	125	,
+	95	,	107	,	114	,	119	,	123	,	126	,
+	96	,	108	,	115	,	120	,	124	,	127	,
+	97	,	109	,	116	,	121	,	125	,	128	,
+	98	,	110	,	117	,	122	,	126	,	129	,
+	99	,	111	,	118	,	123	,	127	,	130	,
+	100	,	112	,	119	,	124	,	128	,	131	,
+	101	,	113	,	120	,	125	,	129	,	132	,
+	102	,	114	,	121	,	126	,	130	,	133	,
+	103	,	115	,	122	,	127	,	131	,	134	,
+	104	,	116	,	123	,	128	,	132	,	135	,
+	105	,	117	,	124	,	129	,	133	,	136	,
+	106	,	118	,	125	,	130	,	134	,	137	,
+	107	,	119	,	126	,	131	,	135	,	138	,
+	108	,	120	,	127	,	132	,	136	,	139	,
+	109	,	121	,	128	,	133	,	137	,	140	,
+	110	,	122	,	129	,	134	,	138	,	141	,
+	111	,	123	,	130	,	135	,	139	,	142	,
+	112	,	124	,	131	,	136	,	140	,	143	,
+	113	,	125	,	132	,	137	,	141	,	144	,
+	114	,	126	,	133	,	138	,	142	,	145	,
+	115	,	127	,	134	,	139	,	143	,	146	,
+	116	,	128	,	135	,	140	,	144	,	147	,
+	117	,	129	,	136	,	141	,	145	,	148	,
+	118	,	130	,	137	,	142	,	146	,	149	,
+	119	,	131	,	138	,	143	,	147	,	150	,
+	120	,	132	,	139	,	144	,	148	,	151	,
+	121	,	133	,	140	,	145	,	149	,	151	,
+	122	,	134	,	141	,	146	,	150	,	151	,
+	123	,	135	,	142	,	147	,	151	,	151	,
+	124	,	136	,	143	,	148	,	151	,	151	,
+	125	,	137	,	144	,	149	,	151	,	151	,
+	126	,	138	,	145	,	150	,	151	,	151	,
+	127	,	139	,	146	,	151	,	151	,	151	,
+	128	,	140	,	147	,	151	,	151	,	151	,
+	129	,	141	,	148	,	151	,	151	,	151	,
+	130	,	142	,	149	,	151	,	151	,	151	,
+	131	,	143	,	150	,	151	,	151	,	151	,
+	132	,	144	,	151	,	151	,	151	,	151	,
+	133	,	145	,	151	,	151	,	151	,	151	,
+	134	,	146	,	151	,	151	,	151	,	151	,
+	135	,	147	,	151	,	151	,	151	,	151	,
+	136	,	148	,	151	,	151	,	151	,	151	,
+	137	,	149	,	151	,	151	,	151	,	151	,
+	138	,	150	,	151	,	151	,	151	,	151	,
+	139	,	151	,	151	,	151	,	151	,	151	,
+	140	,	151	,	151	,	151	,	151	,	151	,
+	141	,	151	,	151	,	151	,	151	,	151	,
+	142	,	151	,	151	,	151	,	151	,	151	,
+	143	,	151	,	151	,	151	,	151	,	151	,
+	144	,	151	,	151	,	151	,	151	,	151	,
+	145	,	151	,	151	,	151	,	151	,	151	,
+	146	,	151	,	151	,	151	,	151	,	151	,
+	147	,	151	,	151	,	151	,	151	,	151	,
+	148	,	151	,	151	,	151	,	151	,	151	,
+	149	,	151	,	151	,	151	,	151	,	151	,
+	150	,	151	,	151	,	151	,	151	,	151	,
+	151	,	151	,	151	,	151	,	151	,	151	),
+ 152, 6, byrow=TRUE) #nrow=152, ncol=6

colnames(Notes_Et_Harm) = c('F', 'H2', 'H3', 'H4', 'H5', 'H6')

